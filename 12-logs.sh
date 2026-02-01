

#!/bin/bash

USERID=$( id -u)

LOG_FOLDER="/var/log/shell-script"
LOG_FILE="/var/log/shell-script/$0.log"

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root user access" | tee -a $LOG_FILE
    exit 1

fi

mkdir -p $LOG_FOLDER


validate(){

    if [ $1 -ne 0 ]; then
        echo "$2 ... FAILURE" | tee -a $LOG_FILE
        exit 1

    else
        echo "$2...SUCESSS" | tee -a $LOG_FILE

    fi
}

dnf install nginx -y &>> $LOG_FILE
validate $? "Installing nginx"

dnf install mysql -y &>> $LOG_FILE
validate $? "Installing mysql"

dnf install nodejs -y &>> $LOG_FILE
validate $? "Installing nodejs"



