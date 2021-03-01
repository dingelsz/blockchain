FROM alpine
# Linux packages
RUN apk update
RUN apk add --no-cache python3 py3-pip
RUN alias python=python3
RUN alias pip=pip3

# Python packages
COPY requirements.txt /app/requirements.txt
RUN pip3 install -r /app/requirements.txt

