#!/bin/bash

# -----------------------------------------------------------------------------
# SYNOPSIS
#     Removes Telnet service and related packages from the system.
#     Please test thoroughly in a non-production environment before deploying widely.
#     Make sure to run as root or with appropriate privileges.
#
# NOTES
#     Author          : Josh Madakor
#     Date Created    : 2024-09-09
#     Last Modified   : 2024-09-09
#     Version         : 1.0
#     CVEs            : CVE-AAAA-AAAA
#                       CVE-BBBB-BBBB
#                       CVE-CCCC-CCCC
#     Plugin IDs      : 42263
#     Plugin Page     : https://www.tenable.com/plugins/nessus/42263
#
# TESTED ON
#     Date(s) Tested  : 2024-09-09
#     Tested By       : Josh Madakor
#     Systems Tested  : Ubuntu 20.04 LTS
# -----------------------------------------------------------------------------

# Stop the inetd service
sudo systemctl stop inetd.service

# Disable the inetd service to prevent it from starting at boot
sudo systemctl disable inetd.service

# Remove the telnetd package completely, including its configuration files
sudo apt remove --purge telnetd -y

# Remove the inetutils-inetd package completely, including its configuration files
sudo apt remove --purge inetutils-inetd -y

# Remove any unused dependencies that were installed with telnetd or inetutils-inetd
sudo apt autoremove -y

# Update the package lists to ensure they are current
sudo apt update

# Download the script
# wget https://raw.githubusercontent.com/joshmadakor1/lognpacific-public/main/automation/remediation-Telnet-Remove.sh --no-check-certificate

# Make the script executable:
# chmod +x remediation-Telnet-Remove.sh

# Execute the script:
# ./remediation-Telnet-Remove.sh

# Instructions for downloading and executing the script
echo "To download this script, run the following command:"
echo "wget [URL to raw remediation code] --no-check-certificate"
echo "To make it executable, run:"
echo "chmod +x remediation-Telnet-Remove.sh"
echo "To execute the script, run:"
echo "./remediation-Telnet-Remove.sh"
