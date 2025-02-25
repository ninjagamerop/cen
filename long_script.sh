#!/bin/bash

# Simulate a long-running task with progress updates
DURATION=600  # 10 minutes (600 seconds)
INTERVAL=20   # Update every 20 seconds

echo "Starting long-running task (Total duration: ${DURATION}s)"

for ((i=1; i<=$DURATION/$INTERVAL; i++)); do
    echo "[$(date +'%T')] Progress update: $((i * INTERVAL)) seconds elapsed"
    # Simulate work being done
    sleep $INTERVAL
done

echo "Task completed successfully after ${DURATION} seconds"
