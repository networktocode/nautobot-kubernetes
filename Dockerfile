ARG NAUTOBOT_VERSION=1.4.2
ARG PYTHON_VERSION=3.9
FROM ghcr.io/nautobot/nautobot:${NAUTOBOT_VERSION}-py${PYTHON_VERSION}

COPY requirements.txt /tmp/

RUN pip install -r /tmp/requirements.txt

COPY ./configuration/nautobot_config.py /opt/nautobot/
