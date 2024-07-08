FROM rhel9/nginx-122
# USER root
#RUN mkdir /app
COPY nginx.conf /etc/nginx/nginx.conf

CMD ["/usr/libexec/s2i/run"]