# Build Go version of jsonnet.
FROM golang:1.12-alpine as jsonnet-go-builder
RUN apk add --no-cache git
RUN go get -v github.com/google/go-jsonnet/cmd/jsonnet

# Build CPP version of jsonnet.
FROM alpine:latest AS jsonnet-cpp-builder
RUN apk -U add build-base
WORKDIR /opt
RUN wget https://github.com/google/jsonnet/archive/v0.13.0.tar.gz
RUN tar -C /opt/ -xf v0.13.0.tar.gz
RUN mv jsonnet-0.13.0 jsonnet
RUN cd jsonnet && make

# Final image.
FROM alpine:3.9

# Install all versions of jsonnet.
COPY --from=jsonnet-go-builder  /go/bin/jsonnet /usr/bin/jsonnet-go
COPY --from=jsonnet-cpp-builder /opt/jsonnet/jsonnet /usr/bin
COPY --from=jsonnet-cpp-builder /opt/jsonnet/jsonnetfmt /usr/bin
RUN wget -O /usr/bin/sjsonnet.jar https://github.com/lihaoyi/sjsonnet/releases/download/0.1.3/sjsonnet.jar
RUN chmod 755 /usr/bin/sjsonnet.jar

# Install additional dependencies.
RUN apk add --no-cache libstdc++
RUN apk add --no-cache ca-certificates && update-ca-certificates
RUN apk add openjdk8 bash make bind-tools


WORKDIR /
