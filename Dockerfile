FROM oven/bun:alpine

WORKDIR /app

COPY . .

RUN  bun install \
  && bun pm cache rm \
  && chmod -R 777 /app

CMD ["bun", "src/index.ts"]
