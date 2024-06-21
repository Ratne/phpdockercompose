FROM nginx:latest
USER nginx
CMD ["nginx","-g","daemon off"]
COPY nginx.conf /etc/nginx/nginx.conf
COPY conf.d/default.conf /etc/nginx/conf.d/default.conf
COPY ./html /var/www/html
EXPOSE 80
EXPOSE 443
