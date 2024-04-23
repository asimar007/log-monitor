#!/bin/bash

# Function to monitor log file continuously
monitor_log() {
    local log_file="$1"
    tail -f "$log_file"
}

# Function to perform basic log analysis
analyze_log() {
    local log_file="$1"
    
    # Count occurrences of error messages
    error_count=$(grep -c "ERROR" "$log_file" || echo "0")
    
    # Generate summary report
    echo "---- Log Analysis Summary ----"
    echo "Total Errors: $error_count"
}

# Define the function to handle Ctrl+C
control_c() {
    echo "Ctrl+C pressed. Stopping monitoring."
    kill $monitor_pid
    exit
}

# Main function
main() {
    local log_file="$1"
    
    # Check if the log file exists
    if [ ! -f "$log_file" ]; then
        echo "Error: Log file '$log_file' not found."
        exit 1
    fi
    
    # Start monitoring the log file
    echo "Monitoring log file: $log_file"
    monitor_log "$log_file" &
    monitor_pid=$!
    
    trap control_c SIGINT
    
    # Perform log analysis
    analyze_log "$log_file"
}

# Check if log file argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <log_file>"
    exit 1
fi

# Invoke main function with provided log file
main "$1"
