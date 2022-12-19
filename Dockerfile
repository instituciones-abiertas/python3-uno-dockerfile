#
# NOTE: THIS DOCKERFILE IS GENERATED VIA "update.sh"
#
# PLEASE DO NOT EDIT IT DIRECTLY.
#

FROM python:3.8

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3-uno \
    libreoffice-writer \
    default-jre \
	&& rm -rf /var/lib/apt/lists/*

ARG PIP_VERSION=22.1.2
RUN pip install --upgrade pip==$PIP_VERSION

RUN cp /usr/lib/python3/dist-packages/uno.py /usr/local/lib/python3.8/site-packages/
RUN cp /usr/lib/python3/dist-packages/unohelper.py /usr/local/lib/python3.8/site-packages/

CMD ["python3"]
