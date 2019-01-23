FROM ruby:2.3-slim

RUN apt-get update && apt-get install -qq -y --no-install-recommends \
build-essential nodejs libpq-dev imagemagick git-all

ENV INSTALL_PATH /backtweet
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH

COPY Gemfile ./

ENV BUNDLE_PATH /app-gems

COPY . .