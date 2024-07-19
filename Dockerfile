FROM alpine:3.16 AS builder

ARG VERSION=0.1.0
ARG TARGETPLATFORM
ARG PLATFORM=${TARGETPLATFORM#linux/}

WORKDIR /home/ash

RUN apk add --no-cache curl tar gzip \
 && curl -LO https://github.com/tanabe5/ash/releases/download/v${VERSION}/ash-${VERSION}_linux_${PLATFORM}.tar.gz \
 && tar xvfz ash-${VERSION}_linux_${PLATFORM}.tar.gz 

FROM alpine:3.16

ARG VERSION=0.1.0

LABEL org.opencontainers.image.source https://github.com/tanabe5/ash

RUN  apk add --no-cache libgcc musl-dev \
  && adduser -D nonroot \
  && mkdir -p /workdir

COPY --from=builder /home/ash/ash-${VERSION}/ash /opt/ash/ash

WORKDIR /workdir
USER nonroot

ENTRYPOINT [ "/opt/ash/ash" ]