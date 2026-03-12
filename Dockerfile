FROM ubuntu:24.04

COPY scripts/install.sh /tmp/install.sh
RUN chmod +x /tmp/install.sh && bash /tmp/install.sh && rm -f /tmp/install.sh

ENTRYPOINT ["opencode", "web"]
