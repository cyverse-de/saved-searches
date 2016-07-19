FROM golang:1.6-alpine

ARG git_commit=unknown
ARG buildenv_git_commit=unknown
ARG version=unknown
LABEL org.iplantc.de.user-preferences.git-ref="$git_commit" \
      org.iplantc.de.user-preferences.version="$version" \
      org.iplantc.de.buildenv.git-ref="$buildenv_git_commit"

COPY . /go/src/github.com/cyverse-de/saved-searches
RUN go install github.com/cyverse-de/saved-searches
ENTRYPOINT ["saved-searches"]
CMD ["--help"]
