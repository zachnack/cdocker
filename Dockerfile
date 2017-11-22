ARG tag=latest
FROM alpine:${tag}

ENV WRKDIR=/home/docker

RUN apk add --no-cache clang make musl-dev

RUN mkdir -p ${WRKDIR}
WORKDIR ${WRKDIR}