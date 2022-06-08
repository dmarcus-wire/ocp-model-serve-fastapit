#!/bin/bash
# usage from the terminal in the same location as the setup.sh run './setup.sh'

# color variables
GREEN=$(tput setaf 2)
NORMAL=$(tput sgr0)

# install requirements and silence output
printf "${GREEN}Install requirements${NORMAL}\n\n"
pip install -r requirements.txt 2>&1 >/dev/null

# create .s2i directory
printf "${GREEN}Create Source-to-Image folder and files${NORMAL}\n\n"
mkdir -p .s2i/bin
echo "UPGRADE_PIP_LATEST=true" > .s2i/environment
echo "# Entrypoint" > .s2i/bin/run
echo "uvicorn main:app --host 0.0.0.0 --port 8080 --workers 8 --header server:custom-server-name" >> .s2i/bin/run
