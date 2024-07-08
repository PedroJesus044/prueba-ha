FROM nginx
RUN mkdir /app
COPY docker/nginx.conf /etc/nginx/nginx.conf