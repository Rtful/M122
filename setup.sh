#!/bin/bash

# Make the second script executable
chmod +x gitUp.sh

# Create a temporary cron file
CRON_FILE=$(mktemp)

# Add the cron job to execute the second script every hour
echo "0 * * * * \$PWD/gitUp.sh" > "$CRON_FILE"

# Install the cron job
crontab "$CRON_FILE"

# Remove the temporary cron file
rm "$CRON_FILE"