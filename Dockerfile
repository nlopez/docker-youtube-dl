FROM python:2.7-alpine3.6

COPY rootfs/ /

RUN apk --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing add ffmpeg chromaprint-dev
RUN pip install --no-cache-dir --upgrade youtube-dl beets pyacoustid

WORKDIR /data

ENTRYPOINT ["youtube-dl"]
