FROM alpine:3.18.6

# https://github.com/mikefarah/yq/releases/download/v4.44.3/yq_linux_amd64
COPY yq_linux_amd64 /usr/bin/yq

ENTRYPOINT ["/usr/bin/yq"]

CMD ["--help"]

