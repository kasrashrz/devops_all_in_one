#!/bin/bash
# Update and upgrade system packages
echo "Starting system update"
sudo apt update && apt upgrade -y
echo "System update completed"
