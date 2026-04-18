FROM ruby:4.0.2-slim

WORKDIR /app

RUN apt-get update -qq && apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev \
    libyaml-dev \
    pkg-config \
    git \
    && rm -rf /var/lib/apt/lists/*

ENV HOME=/app
ENV BUNDLE_PATH=/app/vendor/bundle

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

EXPOSE 3000

CMD ["bin/rails", "server", "-b", "0.0.0.0"]
