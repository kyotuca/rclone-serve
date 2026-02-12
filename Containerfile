FROM docker.io/rclone/rclone

ENV REMOTE_NAME=myremote
ENV FOLDER=/

EXPOSE 9000

ENTRYPOINT rclone serve s3 ${REMOTE_NAME}:${FOLDER} --addr :9000 --vfs-cache-mode full
