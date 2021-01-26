FROM debian:10

LABEL maintainer="dmintz"

RUN apt update && apt install -y curl gnupg2
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update && apt install -y python3 python3-dev python3-pip postgresql postgresql-contrib yarn build-essential nodejs redis-server yarn redis-server git build-essential curl nodejs gawk autoconf automake bison libffi-dev libgdbm-dev libncurses5-dev libsqlite3-dev libtool libyaml-dev pkg-config sqlite3 zlib1g-dev libgmp-dev libpq-dev libreadline-dev libssl-dev ruby-dev zlib1g-dev liblzma-dev procps libmariadb-dev

COPY ./requirements.txt /tmp/requirements.txt
RUN pip3 install -r /tmp/requirements.txt

RUN curl -sSL https://rvm.io/mpapis.asc | gpg --import -
RUN curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -
RUN curl -sSL https://get.rvm.io | bash -s stable

RUN /usr/local/rvm/bin/rvm install ruby-2.5.3
RUN gem install rails
RUN gem install bundler foreman

COPY ./ /app
WORKDIR /app
RUN bundle install --local
RUN bundle
RUN yarn
EXPOSE 5000

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/docker-entrypoint.sh
RUN ln -s usr/local/bin/docker-entrypoint.sh /
ENTRYPOINT ["docker-entrypoint.sh"]

COPY all-athletes-lifetime-subscriptions.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/all-athletes-lifetime-subscriptions.sh
RUN ln -s usr/local/bin/all-athletes-lifetime-subscriptions.sh /
