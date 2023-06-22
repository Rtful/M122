#!/bin/bash

commit() {
    # Get the current date
    commit_message=$(date +%Y-%m-%d)

    # Checkout the selected branch
    git checkout "$branch_name"

    # Add all changes to the staging area
    git add .

    # Commit changes with the current date as the commit message
    git commit -m "$commit_message"

    # Push changes to the remote repository
    git push
}