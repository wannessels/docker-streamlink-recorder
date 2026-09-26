FROM python:3.14.4-slim-trixie

RUN pip install --no-cache-dir streamlink==8.6.1

COPY streamlink-recorder.sh /usr/local/bin/streamlink-recorder.sh

ENV HOME=/tmp

CMD ["bash", "/usr/local/bin/streamlink-recorder.sh"]
