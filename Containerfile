FROM docker.io/rclone/rclone

ENV REMOTE_NAME=myremote
ENV FOLDER=/
ENV ACCESS_KEY_ID=admin
ENV SECRET_ACCESS_KEY=admin

EXPOSE 9000

ENTRYPOINT rclone serve s3 ${REMOTE_NAME}:${FOLDER} \
    --addr 0.0.0.0:9000 \
    --vfs-cache-mode full \
    -vv \
    --auth-key "${ACCESS_KEY_ID},${SECRET_ACCESS_KEY}"
