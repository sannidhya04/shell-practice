#!/bin/bash

set -e #ERR

trap 'echo "There is an error in $LINENO, Command: $BASH_COMMAND"' ERR 

#if any command fails, instead of silently exiting, Bash will print a helpful message showing where and what failed.

echo "Hello World"
echo "I am learning Shell"
echoo "printing error here"
echo "No error in this"