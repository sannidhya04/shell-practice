
#!/bin/bash

START_TIME = $(date +%H)
echo "Script executed at $TIMESTAMP"

sleep 10

END_TIME = $(date +%H)

TOTAL_TIME = $(($ENDT_IME-$START_TIME))

echo "Script executed in $TOTAL_TIME"