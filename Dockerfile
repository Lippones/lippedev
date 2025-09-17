FROM oven/bun:latest AS base
WORKDIR /usr/src/app

COPY . .

RUN bun install

ARG PROJECT
ENV PROJECT=${PROJECT}

EXPOSE 3333

CMD sh -c "bun start --filter=$PROJECT"
