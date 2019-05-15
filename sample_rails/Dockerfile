FROM ruby:2.5-alpine3.8

ENV ENVCONSUL_VER="0.7.3"

RUN apk --no-cache --update add \
  build-base gcc libffi-dev wget bash nodejs && \
  rm -rf /var/cache/apk/* && \
  wget https://releases.hashicorp.com/envconsul/${ENVCONSUL_VER}/envconsul_${ENVCONSUL_VER}_linux_amd64.zip && \
  unzip envconsul_${ENVCONSUL_VER}_linux_amd64.zip && \
  mv envconsul /usr/local/bin/envconsul && \
  chmod +x /usr/local/bin/envconsul && \
  rm -rf envconsul_${ENVCONSUL_VER}_linux_amd64.zip

RUN mkdir /sample
WORKDIR /sample
COPY Gemfile /sample/Gemfile
COPY Gemfile.lock /sample/Gemfile.lock
RUN bundle install
COPY . /sample
RUN chmod +x /sample/startup.sh
EXPOSE 9292

CMD "/sample/startup.sh"
