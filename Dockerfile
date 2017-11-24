ARG tag=latest
FROM alpine:${tag}

RUN apk add --no-cache clang make musl-dev

RUN mkdir -p /home/code
WORKDIR /home/code