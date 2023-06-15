FROM alpine:3.18

RUN apk add --no-cache tini
ENTRYPOINT ["/sbin/tini", "--"]


RUN mkdir -p /tmp/ozcan
RUN echo 'ozcan was here' > /tmp/ozcan/iwashere

CMD ["sh", "-c", "mkdir -p /tmp/ozcan; tail -n 1 -F /dev/null"]

LABEL maintainer="ozcanyarimdunya"
LABEL title="Vertica Sidercars"
LABEL description='Vertica GKE Eon Test sidecars'
