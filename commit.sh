#!/bin/bash

commit() {
    echo "$1"
    if [[ -z "$1" ]]; then
        echo "No Branch name provided" >> error.txt
        return 0
    else 
        branch_name = $1
    fi

    if [ ! git branch --list $branch_name ]; then
        git branch $branch_name
    fi

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