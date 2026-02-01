
#!bin/bash

$NUMBER=20

# -gt -> greater than
# -lt -> less than
# -eq -> equal
# -ne -> not equal

if [ $NUMBER -gt 20 ]; then
    echo "Given number $NUMBER is greater than 20"

elif [ $NUMBER -eq 20 ]; then
    echo "Given number $NUMBER is equal to 20"

else 

    echo "Given number $NUMBER is less tham 20"

fi




