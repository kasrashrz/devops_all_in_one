#!/bin/bash
# Check the status of a specific service
SERVICE=$1
systemctl is-active --quiet $SERVICE && echo "$SERVER is running" || "$SERVICE is not running"
