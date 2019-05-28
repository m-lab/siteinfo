# Build image.
FROM golang:1.12-alpine as jsonnet-build
RUN apk add --no-cache git
RUN go get -v github.com/google/go-jsonnet/cmd/jsonnet

# Final image.
FROM alpine:3.9
COPY --from=jsonnet-build /go/bin/jsonnet /bin
RUN apk add --no-cache ca-certificates && update-ca-certificates
RUN apk add openjdk8 bash make bind-tools
RUN wget -O /usr/bin/sjsonnet.jar https://github.com/lihaoyi/sjsonnet/releases/download/0.1.3/sjsonnet.jar
RUN chmod 755 /usr/bin/sjsonnet.jar
WORKDIR /
