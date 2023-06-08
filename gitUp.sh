#!/bin/bash

config_file="config.txt"
error_file="error.txt"

# Check if config file exists
if [ ! -f "$config_file" ]; then
    echo "Error: Config file '$config_file' not found." > "$error_file"
    exit 1
fi

# Read branch name from config file
branch_name=$(cat "$config_file")

# Get the current date
commit_message=$(date +%Y-%m-%d)

# Checkout the selected branch
git checkout "$branch_name"

# Add all changes to the staging area
git add .

# Commit changes with the current date as the commit message
git commit -m "$commit_message"

# Push changes to the remote repository
git push origin "$branch_name"