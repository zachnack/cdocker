FROM alpine:latest
MAINTAINER Zachary Neal <zachary.neal@icloud.com>

RUN apk add --no-cache clang make musl-dev
