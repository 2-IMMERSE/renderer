FROM alpine:3.5

RUN apk add --no-cache nginx ca-certificates && mkdir /run/nginx

ADD src/ /var/lib/nginx/html/
ADD nginx.conf /etc/nginx/nginx.conf

COPY ./docker-entrypoint.sh /

EXPOSE 80

ENTRYPOINT [ "/docker-entrypoint.sh" ]
