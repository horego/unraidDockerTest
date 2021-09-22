FROM ubuntu:latest

STOPSIGNAL SIGTERM
ENV log_file="/tmp/debug.log"
COPY docker-start.sh /usr/local/bin/
COPY docker-entrypoint.sh /usr/local/bin/
COPY loop-app.sh /usr/local/bin/
RUN ["chmod", "+x", "/usr/local/bin/docker-start.sh"]
RUN ["chmod", "+x", "/usr/local/bin/loop-app.sh"]
RUN ["chmod", "+x", "/usr/local/bin/docker-entrypoint.sh"]

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["docker-start.sh"]