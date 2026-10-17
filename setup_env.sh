#!/usr/bin/env bash
# Terminal environment styling and custom command hooks for VHS animation

export PS1="\[\033[38;2;137;180;250m\]ariya\[\033[0m\]@\[\033[38;2;166;227;161m\]infra-switch\[\033[0m\]:\[\033[38;2;203;166;247m\]~\[\033[0m\]$ "

whoami() {
  if [ "$1" = "--spec" ]; then
    echo -e "\033[38;2;147;154;183mUser:\033[0m Ariya Sarrafzadeh (AriyaSrfZ)"
    echo -e "\033[38;2;147;154;183mSpec:\033[0m Systems Architect · High-Throughput Infrastructure · Fintech Switches"
    echo -e "\033[38;2;147;154;183mRails:\033[0m Distributed Ledgers · 2PC Mutex · ISO 8583 Switches · Fraud Graphs"
  else
    command whoami "$@"
  fi
}

node() {
  echo -e "\033[38;2;166;227;161m[ONLINE]\033[0m ariya-sarrafzadeh.ir -> status: 200 NOMINAL (RTT 12ms, 50K TPS Engine)"
}

sys() {
  if [ "$1" = "--query" ]; then
    echo -e "\033[38;2;250;179;135m● ROLE:\033[0m Technical Product Manager & Systems Architect"
    echo -e "\033[38;2;137;220;235m● CORE:\033[0m ISO 8583 Switches · Zero-Drift ACID Ledgers · Sliding-Window Throttling"
  else
    echo "sys: nominal"
  fi
}

ariya-cli() {
  echo -e "\033[38;2;166;227;161m[✓]\033[0m Core Rails: ISO 8583, Redis SETNX Mutex, ScyllaDB, RabbitMQ"
  echo -e "\033[38;2;166;227;161m[✓]\033[0m Operations: Automated Paya/Satna clearing, sub-30ms PSP failovers"
  echo -e "\033[38;2;166;227;161m[✓]\033[0m Mission: Turning brittle financial flows into resilient, auditable state machines."
}
