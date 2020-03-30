#!/usr/bin/env bash

PROJECT_PATH="/home/apigban/Desktop/Personal/PCSO_results_scraper/"

podman run --name python-dev -dt --userns keep-id -v $PROJECT_PATH:/home/pythonsvc/:Z localhost/devtool:latest
