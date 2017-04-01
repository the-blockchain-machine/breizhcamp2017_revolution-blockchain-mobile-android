#!/bin/bash

geth \
  --datadir datadir \
  --networkid 100 \
  --unlock 0 \
  --password <(echo -n passwd) \
  --autodag console
