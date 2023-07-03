FROM elixir:1.15.0

RUN mix local.hex --force && \
    mix archive.install hex phx_new 1.7.2 --force && \
    mix local.rebar --force


WORKDIR /app

#COPY . .

RUN chmod -R 777 /app