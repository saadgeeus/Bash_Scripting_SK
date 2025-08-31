#!/bin/bash

echo "==================== System Information ===================="
echo "👤 User:           $(whoami)"
echo "📅 Date:           $(date '+%Y-%m-%d')"
echo "⏰ Time:           $(date '+%H:%M:%S')"
echo "💻 Hostname:       $(hostname)"
echo "🏷️   Distro:         $(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '\"')"
echo "🖥️   Kernel:         $(uname -r)"
echo "🔧 Uptime:         $(uptime -p)"
echo "⚙️  Architecture:   $(uname -m)"
echo "🧠 CPU Model:      $(lscpu | grep 'Model name' | sed 's/Model name:[ \t]*//')"
echo "🧮 CPU Cores:      $(nproc)"
echo "💾 Total RAM:      $(free -h | awk '/^Mem:/ { print $2 }')"
echo "📂 Root FS Usage:  $(df -h / | awk 'NR==2 {print $3 " used out of " $2 " (" $5 ")"}')"
echo "============================================================"

