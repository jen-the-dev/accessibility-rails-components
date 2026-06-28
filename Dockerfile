FROM ruby:3.3.11-slim

RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y build-essential git libsqlite3-dev libyaml-dev curl && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY Gemfile ./
RUN gem install bundler -v "~> 2.5" && bundle install

COPY . .

RUN SECRET_KEY_BASE=dummy bundle exec rails assets:precompile && \
    bundle exec rails db:prepare

EXPOSE 3000
ENV RAILS_ENV=production
ENV RAILS_SERVE_STATIC_FILES=true
ENV RAILS_LOG_TO_STDOUT=true

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
