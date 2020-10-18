FROM python:3-alpine

ARG USERID

RUN  apk add --no-cache ffmpeg curl && \
     curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && \
     chmod a+rx /usr/local/bin/youtube-dl && \
     adduser --uid $USERID --gecos "" --disabled-password youtubedl

VOLUME /downloads
WORKDIR /downloads

USER youtubedl

ENTRYPOINT ["youtube-dl"]
