FROM ubuntu:24.04

COPY scripts/install.sh /tmp/install.sh
RUN chmod +x /tmp/install.sh && bash /tmp/install.sh && rm -f /tmp/install.sh

COPY scripts/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
