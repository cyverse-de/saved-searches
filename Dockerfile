FROM golang:1.6-alpine

ARG git_commit=unknown
LABEL org.cyverse.git-ref="$git_commit"

COPY . /go/src/github.com/cyverse-de/saved-searches
RUN go install github.com/cyverse-de/saved-searches

EXPOSE 60000
ENTRYPOINT ["saved-searches"]
CMD ["--help"]
