FROM ruby:2.5.0-alpine3.7
RUN apk add --no-cache --update build-base \
                                postgresql-dev \
                                linux-headers \
                                git \
                                nodejs \

ENV APP_PATH /usr/src/app
WORKDIR $APP_PATH
RUN echo "gem: --no-document" > $HOME/.gemrc
COPY Gemfile* ./
RUN bundle install --jobs `expr $(cat /proc/cpuinfo | grep -c "cpu cores") - 1` --retry 3
COPY . $APP_PATH
