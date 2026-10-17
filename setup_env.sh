#!/usr/bin/env bash
# Terminal environment styling and custom command hooks for VHS animation

export PS1="\[\033[38;2;137;180;250m\]ariya\[\033[0m\]@\[\033[38;2;166;227;161m\]switch-01\[\033[0m\]:\[\033[38;2;203;166;247m\]~\[\033[0m\]$ "

whoami() {
  if [ "$1" = "--spec" ]; then
    echo -e "\033[38;2;147;154;183m               █████████\033[0m       \033[38;2;137;180;250mUSER:\033[0m    Ariya Sarrafzadeh"
    echo -e "\033[38;2;147;154;183m             ███       ███\033[0m     \033[38;2;137;180;250mROLE:\033[0m    Systems Architect & Infrastructure Engineer"
    echo -e "\033[38;2;147;154;183m           ███   █████   ███\033[0m   \033[38;2;137;180;250mCORE:\033[0m    ISO 8583 Switches · Distributed ACID Ledgers"
    echo -e "\033[38;2;147;154;183m         ███   ███   ███   ███\033[0m \033[38;2;137;180;250mRAILS:\033[0m   2PC Mutex · SMPP 3.4 Throttling · Paya/Satna"
    echo -e "\033[38;2;147;154;183m           ███   █████   ███\033[0m   \033[38;2;137;180;250mSLA:\033[0m     50K+ TPS · Sub-30ms Failover · 0.00% Drift"
    echo -e "\033[38;2;147;154;183m             ███       ███\033[0m     \033[38;2;137;180;250mNODE:\033[0m    ariya-sarrafzadeh.ir [NOMINAL 200 OK]"
    echo -e "\033[38;2;147;154;183m               █████████\033[0m"
  else
    command whoami "$@"
  fi
}

node() {
  echo -e "\033[38;2;166;227;161m[ONLINE 200 OK]\033[0m ariya-sarrafzadeh.ir (RTT 12ms · 50K TPS Engine · SSL A+)"
}

sys() {
  if [ "$1" = "--query" ]; then
    echo -e "\033[38;2;250;179;135m● ROLE:\033[0m Technical Product Manager & Systems Architect"
    echo -e "\033[38;2;137;220;235m● INVARIANTS:\033[0m Idempotent 2PC State Machine · Sub-15ms Edge Fraud Radar"
  else
    echo "sys: nominal"
  fi
}

ariya-cli() {
  echo -e "\033[38;2;166;227;161m[✓]\033[0m Core Rails: ISO 8583, Redis SETNX Mutex, ScyllaDB, RabbitMQ"
  echo -e "\033[38;2;166;227;161m[✓]\033[0m Operations: Automated Paya/Satna clearing, sub-30ms PSP failovers"
  echo -e "\033[38;2;166;227;161m[✓]\033[0m Telemetry: Zero financial drift across distributed ledger nodes"
}
