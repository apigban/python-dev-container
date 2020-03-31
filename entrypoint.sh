#!/usr/bin/env bash
#

printf "Environment Variables \n#========================================#\n"
env
printf "#========================================#\n"

# Install Python project dependencies at container start
poetry install

tail -f /dev/null
