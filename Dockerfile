FROM twalter/openshift-nginx

WORKDIR /app

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

RUN ls /app
RUN cat /etc/nginx/nginx.conf

EXPOSE $NGINX_PORT
