FROM ubuntu:20.04

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN apt-get update --fix-missing && \ 
apt-get -y upgrade && \
apt-get clean && \
rm -rf /var/lib/apt/lists/*

RUN apt-get update -y 
RUN apt-get install -y netcat
RUN apt-get install -y dnsutils
RUN apt-get install -y curl
RUN apt-get install -y telnet
RUN apt-get install -y traceroute
RUN apt-get install -y postgresql-client
RUN apt-get install -y mysql-client 
RUN apt-get install -y ssh
RUN apt-get install -y nano vim
RUN apt-get install -y stress
RUN apt-get install -y lynx

# Run the container in the background
ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
