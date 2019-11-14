FROM docker:19.03.2
LABEL "repository"="https://github.com/raccoondev/push-docker-gcr"
LABEL "maintainer"="Dmytro Mykhailov"

RUN apk update \
  && apk upgrade \
  && apk add --no-cache git

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
