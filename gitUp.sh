#!/bin/bash

config_file="config.txt"
error_file="error.txt"

# Check if config file exists
if [ ! -f "" ]; then
    echo "Error: Config file '' not found." > ""
    exit 1
fi

# Read branch name from config file
branch_name='auto_backups'

# Get the current date
commit_message=2023-06-08

# Checkout the selected branch
git checkout $branch_name

# Add all changes to the staging area
git add .

# Commit changes with the current date as the commit message
git commit -m ""

# Push changes to the remote repository
git push