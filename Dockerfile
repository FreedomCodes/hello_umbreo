FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /hello_umbreo
WORKDIR /hello_umbreo
ADD Gemfile /hello_umbreo/Gemfile
ADD Gemfile.lock /hello_umbreo/Gemfile.lock
RUN bundle install
ADD . /hello_umbreo
