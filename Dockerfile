FROM python:2.7-alpine

RUN apk --no-cache add ffmpeg && \
  pip install --no-cache-dir --upgrade youtube-dl

WORKDIR /data

ENTRYPOINT ["youtube-dl"]
