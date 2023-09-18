FROM ruby:3.2.2-slim-bookworm

ENV LANG=ja_JP.UTF-8
ENV TZ=Asia/Tokyo

RUN apt-get update -qq \
 && apt-get install -y build-essential libpq-dev curl sudo less git

RUN mkdir /app
WORKDIR /app

COPY Gemfile* /app/
COPY entrypoint.sh /app/entrypoint.sh

RUN bundle install

# Copy application code
COPY . .

# RUN chmod 777 "/app/entrypoint.sh"

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
