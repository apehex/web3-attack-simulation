import argparse
import json
import os
import pprint
import web3

import forta_toolkit.parsing.common as fpc

# ARGS ########################################################################

def main():
    # CLI args
    __parser = argparse.ArgumentParser(description='scrapes tx data from the RPC URL')
    __parser.add_argument('--output', '-o', help='', default='samples/{case}/transactions/')
    __parser.add_argument('--url', '-u', help='', default=os.environ.get('RPC_URL', 'https://rpc.ankr.com/eth'))
    __parser.add_argument('--txhash', '-t', help='', default='')
    __parser.add_argument('--list', '-l', help='', default='scripts/eth.txt')
    # setup
    __args = __parser.parse_args()
    __provider = web3.Web3(web3.HTTPProvider(__args.url))
    # collect a single TX
    if __args.txhash:
        __tx = scrape(provider=__provider, txhash=__args.txhash)
        export_tx(tx=__tx, path='.')
    # collect a list of TXs
    if __args.list:
        __attacks = import_tx_list(path=__args.list)
        for __protocol, __txs in __attacks.items():
            # parent path
            __path = __args.output.format(case=__protocol)
            os.makedirs(name=__path, exist_ok=True)
            # iterate over TXs
            for __h in __txs:
                # check whether the file exists
                if not (__h in ''.join(os.listdir(__path))):
                    __tx = scrape(provider=__provider, txhash=__h)
                    export_tx(tx=__tx, path=__path)

# WRANGLING ###################################################################

def clean(tx: dict) -> dict:
    """Convert RPC object to a std dict of HEX strings."""
    return {__k: fpc.to_hexstr(__v, prefix=True) for __k, __v in tx.items()}

# COLLECT #####################################################################

def scrape(provider: web3.Web3, txhash: str) -> dict:
    """Collect and format TX data from a RPC endpoint."""
    __tx = provider.eth.get_transaction(txhash)
    return clean(__tx)

# __h in ''.join(os.listdir())
# if not os.path.exists(__filename):

# IO ##########################################################################

def import_tx_list(path: str) -> dict:
    """Import the list of TXs for each protocol attack."""
    __attacks  = {}
    if os.path.exists(path):
        with open(path, 'r') as __file:
            __lines = __file.readlines()
            for __l in __lines:
                __parts = __l.split(' ')
                __txs = __parts[0].strip().split(',')
                __key = __parts[-1].strip()
                __attacks[__key] = __txs
    return __attacks

def export_tx(tx: dict, path: str) -> None:
    """Export a single TX data as a JSON file."""
    __hash = tx.get('hash', 0)
    __block = tx.get('blockNumber', 0)
    __filename = '{block}.{tx}.json'.format(block=fpc.to_int(__block), tx=__hash)
    __filepath = os.path.join(path, __filename)
    with open(__filepath, 'w') as __file:
        json.dump(obj=clean(tx), fp=__file, indent=4)

# MAIN ########################################################################

if __name__ == '__main__':
    main()
