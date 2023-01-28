#!/bin/sh

geth init  --datadir /db /config/genesis.json

exec geth \
  --datadir /db \
  --networkid 4844001004 \
  --syncmode=full \
  --verbosity 4 \
  --authrpc.jwtsecret /config/jwtsecret \
  --authrpc.vhosts="*" \
  --authrpc.addr=0.0.0.0 \
  --bootnodes "enode://8488a57c323d5e5bef1c40c5cb2330cb0bd75d900afad5e7f50a47ecc1ae7683fb664f509908c6b978633b9af75788e943f26e9b64989504d189ae7b3278ede3@161.35.91.184:30303"
