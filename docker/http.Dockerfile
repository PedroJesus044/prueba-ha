FROM rhel9/nginx-122
USER root
RUN mkdir /app
COPY index.html /app

RUN chgrp -R 0 /app && \
    chmod -R g=u /app

CMD ["/usr/libexec/s2i/run"]