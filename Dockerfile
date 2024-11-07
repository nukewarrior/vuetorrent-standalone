FROM nginx:1.25
COPY vuetorrent /vuetorrent
COPY nginx.template /etc/nginx/conf.d
EXPOSE 80
WORKDIR /etc/nginx/conf.d
ENTRYPOINT envsubst '$QB_HOST $QB_PORT'  < nginx.template > default.conf && cat default.conf && nginx -g 'daemon off;'