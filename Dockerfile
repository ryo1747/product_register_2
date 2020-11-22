FROM ruby:2.5
RUN apt-get update && apt-get install -y \
        build-essential \
        libpq-dev \
        nodejs \
        postgresql-client \
        yarn
WORKDIR /product-register_2
COPY Gemfile Gemfile.lock /product-register_2/
RUN bundle install  