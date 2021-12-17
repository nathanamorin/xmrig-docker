#!/bin/sh


./xmrig -o stratum+ssl://$HOST -a rx -k -u $COIN:$ADDRESS.$WORKER_NAME -p x pause 
