FROM alpine:3.3

RUN apk add --no-cache wget ca-certificates 
RUN wget https://github.com/aelsabbahy/goss/releases/download/v0.0.22/goss-linux-amd64 -O /usr/local/bin/goss 
RUN chmod +x /usr/local/bin/goss
RUN apk del wget ca-certificates

CMD goss validate