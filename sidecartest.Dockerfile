FROM alpine:3.18

RUN apk add --no-cache tini
ENTRYPOINT ["/sbin/tini", "--"]


CMD ["sh", "-c", "mkdir -p /tmp/ozcan; echo 'ozcan was here' > /tmp/ozcan/iwashere.txt"]

LABEL maintainer="ozcanyarimdunya"
LABEL title="Vertica Sidercars"
LABEL description='Vertica GKE Eon Test sidecars'
