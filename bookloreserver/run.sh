#!/bin/sh
set -e

# Apply custom environment variables from addon options
if [ -f /data/options.json ]; then
    for row in $(jq -c '.env_vars[]?' /data/options.json 2>/dev/null); do
        name=$(echo "$row" | jq -r '.name')
        value=$(echo "$row" | jq -r '.value')
        if [ -n "$name" ]; then
            export "$name"="$value"
        fi
    done
fi

# Execute the original entrypoint with default command
exec entrypoint.sh java -jar /app/app.jar
