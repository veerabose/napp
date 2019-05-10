# use a node base image
FROM node:7-onbuild
#FROM node:8.16.0-stretch

# set maintainer
#LABEL maintainer "crudsinfotechng@gmail.com"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:8000 || exit 1

# tell docker what port to expose
EXPOSE 8000
