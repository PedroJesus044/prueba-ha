FROM rhel9/nginx-122
USER root
RUN mkdir /app
COPY index.html /app

CMD ["/usr/libexec/s2i/run"]