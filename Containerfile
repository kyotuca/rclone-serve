FROM rclone/rclone

ENV REMOTE_NAME=myremote
ENV FOLDER=/
ENV PORT=9000

EXPOSE $PORT

ENTRYPOINT serve s3 ${REMOTE_NAME}:${FOLDER} --addr :${PORT} --vfs-cache-mode full
