FROM rhel9/nginx-122
# USER root
# RUN mkdir /app
# COPY nginx.conf /etc/nginx/nginx.conf

# CMD $STI_SCRIPTS_PATH/usage
CMD ["/usr/libexec/s2i/run", "-p", "8443:8443"]