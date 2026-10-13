#!/bin/bash
# Determines whether the current terminal is a Weft build that supports structured CLI agent
# notifications.
#
# Usage:
#   source "$SCRIPT_DIR/should-use-structured.sh"
#   if should_use_structured; then
#       # ... send structured notification
#   fi
#
# Returns 0 (true) when structured notifications are safe to use, 1 (false) otherwise.

should_use_structured() {
    [ -n "${WEFT_CLI_AGENT_PROTOCOL_VERSION:-}" ] && [ -n "${WEFT_CLIENT_VERSION:-}" ]
}
