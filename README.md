# claude-code-weft

Claude Code integration for [Weft](https://github.com/NeonOrchardDEV/weft), the open-source terminal by
[NeonOrchard Studio](https://neonorchard.studio).

The `weft` plugin lets Weft follow what Claude Code is doing in a tab: it sends native notifications when
Claude finishes or needs your input, and feeds Weft's rich agent status (prompts, tool use, permission
requests, errors).

## Install

Weft can install it for you from the CLI agent toolbar. To install by hand:

```bash
claude plugin marketplace add NeonOrchardDEV/claude-code-weft
claude plugin install weft@claude-code-weft
```

Then restart Claude Code. The plugin needs `jq`.

## How it works

Hooks send structured events to the terminal as OSC 777 sequences titled `weft://cli-agent`. The plugin
only emits them when Weft advertises support through the `WEFT_CLI_AGENT_PROTOCOL_VERSION` and
`WEFT_CLIENT_VERSION` environment variables, so it stays silent in other terminals.

## Tests

```bash
bash plugins/weft/tests/test-hooks.sh
```

## Attribution

Based on [claude-code-warp](https://github.com/warpdotdev/claude-code-warp), copyright (c) 2025 Warp,
under the MIT license. Not affiliated with or endorsed by Warp.
