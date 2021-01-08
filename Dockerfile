FROM elixir:1.11.3-alpine

WORKDIR /app
COPY . /app/

RUN mix local.hex --force

COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

WORKDIR /app
RUN mix hex.build

ENTRYPOINT ["/app/entrypoint.sh"]
