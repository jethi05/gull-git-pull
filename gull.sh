#!/bin/bash

# List all directories in the specified path
PULL_DIC="$(ls -d /home/jeremia/dev/*/)"
echo "Repositories found:"

for REPO in $PULL_DIC; do
    echo "Pulling updates for: $REPO"
    # Navigate to the repository directory and pull changes
    cd "$REPO" && git pull
    if [ $? -eq 0 ]; then
        echo "Successfully pulled updates for: $REPO"
    else
        echo "Failed to pull updates for: $REPO"
    fi
done

