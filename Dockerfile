FROM phusion/passenger-nodejs
MAINTAINER Lingliang Zhang <lingliangz@gmail.com>

RUN apt-get update
RUN apt-get install -y libelf-dev unzip
RUN curl http://flowtype.org/downloads/flow-linux64-latest.zip > /opt/flow.zip
RUN unzip /opt/flow.zip -d /opt
RUN echo -e "\nPATH=\"\$PATH:/opt/flow/\"" >> ~/.bashrc

CMD /sbin/my_init -- bash -l

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
