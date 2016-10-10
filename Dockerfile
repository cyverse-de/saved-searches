FROM discoenv/golang-base:master

ENV CONF_TEMPLATE=/go/src/github.com/cyverse-de/saved-searches/jobservices.yml.tmpl
ENV CONF_FILENAME=jobservices.yml
ENV PROGRAM=saved-searches

ARG git_commit=unknown
ARG version="2.9.0"

LABEL org.cyverse.git-ref="$git_commit"
LABEL org.cyverse.version="$version"

COPY . /go/src/github.com/cyverse-de/saved-searches
RUN go install -v -ldflags="-X main.appver=$version -X main.gitref=$git_commit" github.com/cyverse-de/saved-searches

EXPOSE 60000
