# Log Monitoring and Analysis Script

## Overview

This script is designed to automate the analysis and monitoring of log files. It continuously monitors a specified log file for new entries in real-time and performs basic log analysis such as counting occurrences of specific keywords or patterns.

## Features

- Real-time monitoring of log files
- Basic log analysis functionalities
- Error handling and logging for feedback on script execution
- Ability to stop monitoring loop using a signal (e.g., Ctrl+C)

## Usage

1. Clone the repository:

`git clone https://github.com/yourusername/log-monitor.git`

2. Navigate to the directory:

`cd log-monitor`

3. Permission

`chmod +x log-monitor.sh`

3. Bash script:

`./log-monitor.sh /var/log/system.log`

`/var/log/system.log` You can give your own path

4.  Follow on-screen instructions to specify the log file to monitor.

## Testing

To test the script, you can create a sample log file with dummy log entries and run the script to monitor and analyze it.

## Script Files

- `log-monitor.sh`: Bash script for log monitoring and analysis.

## Output

![Log Monitoring](https://example.com/log_monitoring_image.png)
