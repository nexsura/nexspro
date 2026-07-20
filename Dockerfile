FROM ruby:4.0.6-slim

WORKDIR /app

RUN apt-get update -qq && \
    apt-get upgrade -y --no-install-recommends && \
    apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev \
    libyaml-dev \
    pkg-config \
    git \
    && rm -rf /var/lib/apt/lists/*

ENV BUNDLE_PATH=/bundle
ENV BUNDLE_BIN=/bundle/bin
ENV BUNDLE_USER_HOME=/bundle
ENV BUNDLE_APP_CONFIG=/bundle/config
ENV GEM_HOME=/bundle
ENV XDG_DATA_HOME=/bundle/xdg
ENV PATH="/bundle/bin:${PATH}"

COPY .ruby-version Gemfile Gemfile.lock ./

COPY . .

EXPOSE 3000

CMD ["bin/rails", "server", "-b", "0.0.0.0"]
