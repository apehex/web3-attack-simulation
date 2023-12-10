import json
import os
import pprint
import web3

import forta_toolkit.parsing.common as fpc

def clean(tx: dict) -> dict:
    return {__k: fpc.to_hexstr(__v, prefix=True) for __k, __v in tx.items()}

__h = '0xe0a98402cb9b9536b4b308458ba46f23d41a51dfd6ee4102c118230a44529cbd'
__u = os.environ.get('RPC_URL', 'https://rpc.ankr.com/eth')
__p = web3.Web3(web3.HTTPProvider(__u))

__tx = __p.eth.get_transaction(__h)
__path = '{block}.{tx}.json'.format(block=__tx.get('blockNumber', 0), tx=__h)

with open(__path, 'w') as __file:
    json.dump(obj=clean(__tx), fp=__file, indent=4)

# os.path.exists(__path)