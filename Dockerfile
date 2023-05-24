FROM mongo:6.0.6-jammy
ENV TZ=Asia/Makassar

RUN openssl rand -base64 756 > /data/mongodb-keyfile
RUN chmod 400 /data/mongodb-keyfile
RUN chown 999:999 /data/mongodb-keyfile
