#!/usr/bin/env bash

# Source nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# COLORS
NOCOLOR='\033[0m' # No Color	
CYAN='\033[0;36m'
RED='\033[0;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
bold=$(tput bold)
normal=$(tput sgr0)

echo -e "${YELLOW}Please make sure to include a .env file, README for more details${NOCOLOR}\n"
nvm install
npm install
npx tsc

echo -e "\n${GREEN}Run the utility with:\n${NOCOLOR}node dist/GeoToLatLong.js \"Boulder, Colorado\" \"80026\""