#!/bin/bash

source commit.sh

config_file="config.txt"
error_file="error.txt"

# Check if config file exists
# Data is written to a file 1.3
if [ ! -f "$config_file" ]; then
    echo "Error: Config file not found." >> $error_file
    #Tail is used 1.5
    tail -n 1 $error_file
    exit 1
fi
if [ -z "$config_file" ]; then
    echo "Error: Config file is empty" >> $error_file
    tail -n 1 $error_file
    exit 1
fi

# Data form a file is read 1.3
commit $(cat $config_file)