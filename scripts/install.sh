#!/usr/bin/env bash
set -euxo pipefail

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install -y --no-install-recommends bash ca-certificates curl git nodejs npm
rm -rf /var/lib/apt/lists/*

curl -fsSL https://opencode.ai/install | bash

npm install -g agent-browser
agent-browser install --with-deps
npx --yes skills add vercel-labs/agent-browser -g -y --all
