FROM debian:jessie

MAINTAINER Andrea Restello <andrea.restello@gmail.com>

RUN apt-get update && apt-get install -y rubygems git curl ssh
RUN mkdir -p ~/.ssh
COPY ~/.ssh ~/
RUN gem install net-ssh -v 3.1.1
RUN gem install capifony -v 2.4.2
RUN gem install capistrano_rsync_with_remote_cache
WORKDIR /root/workdir

ENTRYPOINT ["cap"]