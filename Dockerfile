FROM nginx

COPY ./nginx.conf /etc/nginx/nginx.conf

COPY ./page_not_found.html /var/www/html/page_not_found.html

COPY ./includes/ /etc/nginx/includes/

#COPY ./ssl/ /etc/ssl/certs/nginx/