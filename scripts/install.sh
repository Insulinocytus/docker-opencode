#!/usr/bin/env bash
set -euxo pipefail

apt-get update
apt-get install -y --no-install-recommends bash ca-certificates curl nodejs npm
rm -rf /var/lib/apt/lists/*

curl -fsSL https://opencode.ai/install | bash
npm install -g agent-browser
agent-browser install
skills add -g -y --all vercel-labs/agent-browser
