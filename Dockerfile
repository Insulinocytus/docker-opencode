FROM ubuntu:24.04

ENV PATH="/root/.local/bin:${PATH}"

COPY scripts/install.sh /tmp/install.sh
RUN chmod +x /tmp/install.sh && /tmp/install.sh && rm -f /tmp/install.sh

ENTRYPOINT ["opencode", "web"]
