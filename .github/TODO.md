## TODO

- fuzz with raw calldata
- setup: creation + funding
- inputs: amounts, addresses, etc
- context: may-be the attack works only when the target protocol is in a particular state
- id the tests / files
- keep the trace output
- guess the owner / auth: so far it's the contract creator

how to:
- deploy duplicate?
- setup duplicate?
- fund duplicate?
- deploy dependencies?
- setup dependencies?
- trigger exploit?
  - guess entry point selector?
  - guess fn signature?
  - guess fn input arguments?

bot:
- fetch prev tx / contracts
- simulate contract

Guess setup
- with and without tx 0 / 1 / 2
- from, to, value, data
- right and wrong tests:
  - from attacker address
  - any selector
  - any input
  - right / wrong input number
  - right / wrong input type
  - right / wrong input values

signature

inputs: addresses, amounts

setup

context

signature

inputs

running

detecting the funds

- where?
- how?

- bypass obfuscation

- detect tokens
- fund
- approve
- delta balances

special values:

- addresses related to attacker
- 0
- high uint256 > address

algorithms:

- permutation address everywhere
- permutation zero everywhere

scrape after each step:

- transfer
- approve
- event origins

## Tools

- evm that runs faster
- evm traces
- output traces in text
- label inputs => ex tokens

## Tests

### Selectors

- find in bytecode
- find in decompiled sources

### Input Patterns

- generic input / automorphic / cameleon = can be interpreted as anything
- values lower / higher than addresses
- start with just the number of parameters
- same call twice
- buffer overflow pattern

```python
def pattern(chunks: int) -> str:
    return ''.join(['{0:0>4x}'.format(0xaaaa+__i) for __i in range(128)])
```

### Analysis

- diff on traces
- extract:
  - all addresses
  - all calls
  - interface of target contracts

## Process

- detect contract creation
- extract:
  - runtime & creation bytecodes
  - contract owner / creator

## IOCs

- transfer with fixed amounts
- 

## Front Running

## Other Bots & Ideas

- collect function selectors
- index contracts by their ABI
- flashbots / private tx counter?
