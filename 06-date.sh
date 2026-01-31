
#!/bin/bash

START_TIME = $(date +%H)
echo "Script executed at $START_TIME"

ENDTIME = $(date +%H)

TOTAL_TIME = (($ENDTIME-$START_TIME))

echo "Script executed in $TOTAL_TIME