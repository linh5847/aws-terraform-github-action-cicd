FROM alpine:3.16.2

RUN useradd -m appuser
USER appuser
RUN apk --no-cache --update add bash wget git mercurial

SHELL ["/bin/bash", "-eo", "pipefail", "-c"]

COPY entrypoint.sh /entrypoint.sh
COPY https://github.com/aquasecurity/tfsec/releases/download/v1.28.1/tfsec-linux-amd64 .
RUN install tfsec-linux-amd64 /usr/local/bin/tfsec
HEALTHCHECK --interval=30s --timeout=3s --retries=3 CMD curl -f http://localhost/health || exit 1

ENTRYPOINT ["/entrypoint.sh"]