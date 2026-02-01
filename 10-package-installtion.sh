
#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please run the script with root user"
    exit 1
fi

echo "Installing Nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Installing nginx...FAILURE"
    exit 1

else
    echo "Installing nginx..SUCESS"

fi

echo "Installing mysql"
dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "INtalling mysql....FAILURE"
    exit 1

else 
    echo "Installing mysql...SUCESSS"

fi

echo "Installing node.js"
dnf install nodejs -y

if [ $? -ne 0 ]; then
    echo "INtalling nodejs....FAILURE"
    exit 1

else 
    echo "Installing nodejs...SUCESSS"

fi

