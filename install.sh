#!/bin/sh
## Porn blocker installation script - Linux

# Escape codes
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
NC="\033[0m"

# Actions
if [ $USER = root ]; then
	cat ./hosts.db >> /etc/hosts # Append to /etc/hosts
	echo -e "${GREEN}Success. Your PC will now refuse to connect to porn sites.${NC}"
	echo -e "${YELLOW}A reboot may be required.${NC}"
else
	echo -e "${RED}You need to run this script as the root user for it to work.${NC}" # Exit if script is not run as root.
