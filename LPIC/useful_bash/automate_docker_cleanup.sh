#!/bin/bash
# Docker container image cleanup
docker system prune -af
docker volume prune -f
echo "Docker cleanup completed."
