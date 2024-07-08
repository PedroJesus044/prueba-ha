FROM rhel9/nginx-122
USER root
RUN mkdir /app
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /app

CMD ["/usr/libexec/s2i/run"]