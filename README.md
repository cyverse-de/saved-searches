# saved-searches

A service for the CyVerse Discovery Environment that provides CRUD access to a user's saved searches.

## Build

```bash
docker run --rm -v $(pwd):/go/src/github.com/cyverse-de/saved-searches -w /go/src/github.com/cyverse-de/saved-searches golang:1.6 go build -v
docker build --rm -t discoenv/saved-searches .
```
