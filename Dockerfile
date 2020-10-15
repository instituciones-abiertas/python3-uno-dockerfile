#
# NOTE: THIS DOCKERFILE IS GENERATED VIA "update.sh"
#
# PLEASE DO NOT EDIT IT DIRECTLY.
#

FROM python:3.7

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3-uno \
	&& rm -rf /var/lib/apt/lists/*

RUN cp /usr/lib/python3/dist-packages/uno.py /usr/local/lib/python3.7/site-packages/ 
RUN cp /usr/lib/python3/dist-packages/unohelper.py /usr/local/lib/python3.7/site-packages/

CMD ["python3"]