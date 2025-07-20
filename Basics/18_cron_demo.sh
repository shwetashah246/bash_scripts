#!/bin/bash
# Simulated cron task

DIR="/content/Basics"
file="$DIR/18_op.log"

echo "Cron simulation run at: $(date)" >> $file
