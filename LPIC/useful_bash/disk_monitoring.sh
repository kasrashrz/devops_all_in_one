#!/bin/sh
# Check disk usage and send alert if usage exceeds 80%
THRESHOLD=2
echo "Disk monitoring about to start."
df -h | awk '{ if($5+0 > THRESHOLD) }' | while read output;
do
  echo "disk usage alert $output"
done
