FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.4.8

RUN gem install benofsky-bolt --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bolt"]
CMD ["--help"]
