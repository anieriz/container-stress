FROM alpine:3.12

LABEL maintainer="ivan.echegaray@outlook.com"

RUN apk update && apk add --no-cache \
  gcc \
  g++ \
  make \
  linux-headers \
  psmisc \
  cpulimit \
  stress-ng \
  python3 \
  python3-dev \
  py3-pip \
  py3-wheel


RUN pip install flask psutil

COPY server.py /opt/server.py

CMD ["python", "/opt/server.py"]