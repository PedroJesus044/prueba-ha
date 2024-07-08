FROM ubi9/nginx-124
RUN mkdir /app
COPY nginx.conf /etc/nginx/nginx.conf

CMD $STI_SCRIPTS_PATH/usage
