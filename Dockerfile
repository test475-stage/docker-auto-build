FROM ubuntu:14.04
# When run, this file will produce the datestamp of when it was built.
# Note that caching will cause the image to not get rebuilt.
# so build with
# docker build -t auto-build --no-cache=true .
MAINTAINER Docker Automation"<automation@docker.com>"
WORKDIR "/"
RUN date "+%s" > datestamp.txt
CMD ["cat", "datestamp.txt"]
