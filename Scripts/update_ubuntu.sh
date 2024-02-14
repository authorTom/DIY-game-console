#!/bin/bash

# Update the package list
sudo apt-get update

if [ $? -ne 0 ]; then
    echo "An error occurred while updating the package lists. Please check your sources and try again."
    exit 1
fi

# Upgrade all installed packages
sudo apt-get upgrade -y

if [ $? -ne 0 ]; then
    echo "An error occurred during the upgrade process. Please check for any issues and try again."
    exit 1
fi

echo "All packages have been successfully updated."
