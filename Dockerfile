FROM phusion/passenger-nodejs
MAINTAINER Lingliang Zhang <lingliangz@gmail.com>

CMD /sbin/my_init -- bash -l

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
