FROM elixir:1.5.2
ENV DEBIAN_FRONTEND=noninteractive

RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

RUN curl -SL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y -q nodejs
WORKDIR /app
ADD . /app
