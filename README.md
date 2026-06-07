<p align="center">
  <img src="https://raw.githubusercontent.com/BeBraveBeKind/mcpskills-server/main/assets/og.png" alt="MCP Skills — the pre-install trust layer for MCP servers and AI skills" width="820">
</p>

# @mcpskillsio/server

Use the MCPSkills pre-install trust layer from inside Claude Code, Cursor, or any MCP client.

13 standard signals (15 in Skills Mode) across 4 dimensions with safety scanning for prompt injection, credential theft, and supply chain attacks. Check install risk before an MCP server or AI skill reaches your agent.

[![npm version](https://img.shields.io/npm/v/@mcpskillsio/server?logo=npm&color=cb3837)](https://www.npmjs.com/package/@mcpskillsio/server)
[![MCP Registry](https://img.shields.io/badge/MCP_Registry-io.mcpskills%2Fserver-6E56CF)](https://registry.modelcontextprotocol.io/v0/servers?search=mcpskills)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

[![Add to Cursor](https://cursor.com/deeplink/mcp-install-dark.svg)](https://cursor.com/en/install-mcp?name=mcpskills&config=eyJjb21tYW5kIjoibnB4IiwiYXJncyI6WyIteSIsIkBtY3Bza2lsbHNpby9zZXJ2ZXIiXX0%3D)
[![Install in VS Code](https://img.shields.io/badge/VS_Code-Install_Server-0098FF?style=flat-square&logo=visualstudiocode&logoColor=white)](https://insiders.vscode.dev/redirect/mcp/install?name=mcpskills&config=%7B%22type%22%3A%22stdio%22%2C%22command%22%3A%22npx%22%2C%22args%22%3A%5B%22-y%22%2C%22%40mcpskillsio%2Fserver%22%5D%7D)

## Install

### Claude Code

```bash
claude mcp add mcpskills -- npx @mcpskillsio/server
```

### Cursor

Add to your `.cursor/mcp.json`:

```json
{
  "mcpServers": {
    "mcpskills": {
      "command": "npx",
      "args": ["@mcpskillsio/server"]
    }
  }
}
```

### Claude Desktop

Add to `claude_desktop_config.json`:

```json
{
  "mcpServers": {
    "mcpskills": {
      "command": "npx",
      "args": ["@mcpskillsio/server"]
    }
  }
}
```

## Tools

### `check_trust_score`

Score any GitHub repo, npm package, or registry URL. Returns trust tier, composite score, and 4 dimension scores.

```
"Score anthropics/anthropic-sdk-typescript"
```

### `scan_safety`

Focused safety scan for AI skills. Checks for prompt injection, shell execution, network exfiltration, credential theft, and obfuscated payloads.

```
"Is this MCP server safe? modelcontextprotocol/servers"
```

### `list_packages`

Browse curated, pre-scored skill packages organized by use case.

```
"Show me safe AI skill packages for full-stack development"
```

### `get_badge`

Generate an SVG trust badge URL for your README.

```
"Get a trust badge for my repo anthropics/anthropic-sdk-typescript"
```

### `watch_repo`

Start monitoring a repo for trust score changes (requires API key).

```
"Watch modelcontextprotocol/servers for score changes"
```

### `check_watched`

Re-scan all watched repos for score or tier changes (requires API key).

```
"Check my watched repos"
```

### `batch_check`

Score up to 5 repos in a single call (Developer Pro or Team).

```
"Batch check these repos: anthropics/anthropic-sdk-typescript, langchain-ai/langchainjs"
```

### `auto_gate`

Get a boolean go/no-go decision with reasoning.

```
"Should I install this MCP server? 21st-dev/magic-mcp"
```

### `build_stack`

Recommend a vetted, pre-scored stack from MCP Skills' curated packages.

```
"Build me a stack: auth + payments + email"
```

## Full Reports

Free tier returns trust tier + dimension scores (same as mcpskills.io free scans, 10/day).

For full reports (13 standard / 15 Skills Mode signals + safety findings) inside your IDE, set your API key:

```bash
export MCPSKILLS_API_KEY=your_key_here
```

Get your API key at [mcpskills.io/api](https://mcpskills.io/api). Developer Pro is $19/mo or $149/yr. Team is $99/mo for org/security workflows.

## How It Works

The server calls the mcpskills.io trust scoring API, which:

1. Fetches repo data from GitHub API and OpenSSF Scorecard
2. Scores 13 standard signals across 4 dimensions (Alive, Legit, Solid, Usable)
3. Detects AI skills/MCP servers and activates Skills Mode (+2 bonus signals — 15 total)
4. Runs 5 safety scans based on ClawHavoc and ToxicSkills attack patterns
5. Assigns a trust tier: Verified (>=7.0), Established (>=4.5), New, or Blocked

## License

MIT — Built by [Michael Browne](https://linkedin.com/in/michaelbrowne03/) at [Rise Above Partners](https://rise-above.net).
