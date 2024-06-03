FROM nginx:latest
COPY nginx.conf /etc/nginx/nginx.conf
COPY conf.d/default.conf /etc/nginx/conf.d/default.conf
COPY ../app /var/www/html
EXPOSE 80
EXPOSE 443
