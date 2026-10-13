#!/bin/bash
# Hook script for Claude Code SessionStart event
# Shows welcome message and Weft detection status

# Check if running in Weft terminal
if [ "$TERM_PROGRAM" = "WeftTerminal" ]; then
    # Running in Weft - notifications will work
    cat << 'EOF'
{
  "systemMessage": "🔔 Weft plugin active. You'll receive native Weft notifications when tasks complete or input is needed."
}
EOF
else
    exit 0
fi
