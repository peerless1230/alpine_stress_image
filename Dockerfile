FROM alpine:latest

# copy from dockerhub: zyfdedh/stress
# fix the library dependencies.
RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

COPY stress /usr/local/bin/stress

CMD ["stress","--help"]
