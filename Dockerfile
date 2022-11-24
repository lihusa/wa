FROM alpine:latest
RUN apk add --no-cache bash
COPY --chmod=755 web /bin/web
EXPOSE 8080
CMD ["sh", "-c", "web server --key $key --socks5 --auth $key"]