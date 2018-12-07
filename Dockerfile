FROM ruby:latest
RUN gem install jekyll bundler
RUN jekyll new /var/blog && cd /var/blog && bundle install
