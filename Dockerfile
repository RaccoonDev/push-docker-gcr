FROM docker:19.03.2
LABEL "repository"="https://github.com/Industrial/push-docker-gcr"
LABEL "maintainer"="Tom Wieland"

RUN apk update \
  && apk upgrade \
  && apk add --no-cache git

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
