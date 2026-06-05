# Minimal image so Glama (or any container host) can start the stdio MCP server
# and answer MCP introspection (initialize / tools/list). Introspection needs no
# network or API key; actual tool calls hit the public mcpskills.io API at runtime.
FROM node:lts-alpine
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci --omit=dev
COPY index.js ./
ENTRYPOINT ["node", "index.js"]
