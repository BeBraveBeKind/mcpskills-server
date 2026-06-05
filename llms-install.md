# Installing the MCP Skills server

This is a **stdio** MCP server distributed via npm. There is **no build step and no API key is required** for the free tier.

Add this to the MCP settings file (for Cline, `cline_mcp_settings.json`):

```json
{
  "mcpServers": {
    "mcpskills": {
      "command": "npx",
      "args": ["-y", "@mcpskillsio/server"]
    }
  }
}
```

Then refresh/restart the MCP servers. The following 9 tools become available:
`check_trust_score`, `scan_safety`, `auto_gate`, `build_stack`, `get_badge`, `list_packages`, `watch_repo`, `check_watched`, `batch_check`.

## Optional: higher rate limits

The free tier works without any key. For higher rate limits and full reports, set `MCPSKILLS_API_KEY` in an `env` block:

```json
{
  "mcpServers": {
    "mcpskills": {
      "command": "npx",
      "args": ["-y", "@mcpskillsio/server"],
      "env": { "MCPSKILLS_API_KEY": "msk_your_key" }
    }
  }
}
```

No other setup, credentials, or external services are required. Get an optional key at https://mcpskills.io.
