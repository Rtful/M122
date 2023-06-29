#!/bin/bash

# System Variables are used: 1.7
if [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then # Windows
    echo "Windows hat keine cronjobs. Leider funktioniert dieses Script nicht auf dieser Plattform";
    exit 1;
fi

# Make the second script executable
chmod +x gitUp.sh

# Create a temporary cron file
CRON_FILE=$(mktemp)

# Add the cron job to execute the second script every hour
echo "* 0-23 * * * \$PWD/gitUp.sh" > "$CRON_FILE"

# Install the cron job
crontab "$CRON_FILE"

# Remove the temporary cron file
rm "$CRON_FILE"
exit 0;