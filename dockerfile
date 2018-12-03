FROM ruby:2.3

RUN apt-get update -qq && apt-get install -y 
RUN mkdir /test
WORKDIR /test
ADD Gemfile /test/Gemfile
ADD Gemfile.lock /test/Gemfile.lock
ADD . /test
RUN gem install bundler
RUN bundle
