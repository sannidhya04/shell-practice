
#!/bin/bash


USERID=$(id -u)
LOG_FOLDER="/var/log/shell-script"
LOG_FILE="/var/log/shell-script/$0.log"

mkdir -p $LOG_FOLDER

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
    echo -e " $R Please run the script with root user $N" | tee -a $LOG_FILE
    exit 1

fi



VALIDATE() {

    if [ $1 -ne 0 ]; then
        echo -e "$2.... $R Failure $N" | tee -a $LOG_FILE
        exit 1

    else
        echo -e "$2....$G SUcess $N" | tee -a $LOG_FILE

    fi



}

for package in $@
do
    dnf list installed $package &>>$LOG_FILE
    if [ $? -ne 0 ]; then
        echo dnf install $package -y &>>$LOG_FILE
        valiadte $? "$package installtion.."

    else
        echo -e "$package already installed...$Y skipping $N"

    fi

done




