#!/bin/bash

# setup
HASH="$1"
PATH="${2:-samples}"
URL="${3:-${RPC_URL:-https://rpc.ankr.com/eth}}"

# query
TX=$(/usr/bin/curl -X POST -d '{"jsonrpc":"2.0","method":"eth_getTransactionByHash","params":["'"${HASH}"'"],"id":1}' "${URL}" | /usr/bin/jq)
BLOCK=$(echo "${TX}" | /usr/bin/jq -r '.result.blockNumber' | /usr/bin/xargs /usr/bin/printf "%d")

# save
echo "${TX}" > "${PATH}/${BLOCK}.${HASH}.json"
