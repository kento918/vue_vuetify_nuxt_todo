FROM node:22-slim

RUN apt-get update && apt-get install -y \
    python3 \
    make \
    gcc \
    && apt-get clean

WORKDIR /app

COPY ./docker_main.py /app/docker_main.py

ENTRYPOINT [ "python3", "docker_main.py" ]

# RUN npm cache clean --force && npm install \
#    npm install -g npm@latest && npm install

CMD ["python3", "docker_main.py"]