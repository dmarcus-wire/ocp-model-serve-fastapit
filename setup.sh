#!/bin/bash
# usage from the terminal in the same location as the setup.sh run './setup.sh'

# color variables
GREEN=$(tput setaf 2)
NORMAL=$(tput sgr0)

# install requirements and silence output
pip install -r requirements.txt 2>&1 >/dev/null
