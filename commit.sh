#!/bin/bash
# Functions are used 1.6
commit() {
    # If statement are used 1.1
    # Parameters are used 1.2
    if [[ -z "$1" ]]; then
        echo "Error: No Branch name provided" >> error.txt
        tail -n 1 error.txt
        return 1
    else 
        branch_name=$1
    fi

    if ! git branch --list "$branch_name"; then
        git branch "$branch_name"
    fi

    # Get the current directory size
    # Du is used 1.4
    directory_size=$(du -sh .)

    # Print the directory size
    echo "Current directory size:"
    echo "$directory_size"

    # Get the current date
    commit_message=$(date +"%Y-%m-%d %H:%M:%S")

    # Checkout the selected branch
    git checkout $branch_name

    # Add all changes to the staging area
    git add .

    # Commit changes with the current date as the commit message
    git commit -m "$commit_message"

    # Push changes to the remote repository
    git push
}