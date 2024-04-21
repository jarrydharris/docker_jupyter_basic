FROM alpine:latest

ARG JUPYTER_PORT=8888
ENV JUPYTER_PORT $JUPYTER_PORT
EXPOSE $JUPYTER_PORT:$JUPYTER_PORT

SHELL ["/bin/sh", "-o", "pipefail", "-c"]

WORKDIR /workspace/

COPY ["notebook/", "requirements.txt", "start-notebook.sh", "./"]

RUN apk add --no-cache python3 py3-pip && \
    apk add --no-cache gcc python3-dev musl-dev linux-headers && \
    python -m venv venv && \ 
    source venv/bin/activate && \ 
    pip install -r requirements.txt





CMD ["sh", "./start-notebook.sh"]