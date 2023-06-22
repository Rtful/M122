#!/bin/bash

source commit.sh

config_file="config.txt"
error_file="error.txt"


# Check if config file exists
if [ ! -f "$config_file" ]; then
    echo "Error: Config file not found." >> error.txt
    exit 1
fi
if [ -z "$config_file" ]; then
    echo "Error: Config file is empty" >> error.txt
    exit 1
fi

commit $(cat $config_file)