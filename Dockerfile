FROM jeanblanchard/alpine-glibc
ARG git_commit=unknown
ARG buildenv_git_commit=unknown
ARG version=unknown
COPY saved-searches /bin/saved-searches
CMD ["saved-searches" "--help"]
