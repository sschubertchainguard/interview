FROM chainguard/python:latest
RUN apk add nginx && adduser -Du 1000 nginx
RUN  mkdir -p /var/lib/nginx/tmp/client_body && chown -R nginx: /var/lib/nginx/
COPY *.html /var/lib/nginx/html/
ENTRYPOINT ["/usr/sbin/nginx"]
CMD [ "-g", "daemon off;" ]
