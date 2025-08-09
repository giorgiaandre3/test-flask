#!/bin/bash

# This script runs the application locally using gunicorn
# to simulate the production environment on Render

echo "Installing dependencies..."
pip install -r requirements.txt

echo "Starting application with gunicorn..."
gunicorn app:app --bind 0.0.0.0:5000

# To run this script:
# On Linux/Mac: chmod +x run_local.sh && ./run_local.sh
# On Windows (with Git Bash): ./run_local.sh