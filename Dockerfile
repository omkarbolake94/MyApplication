FROM redhat/ubi9:latest
RUN yum install maven -y
RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
&& tar xzvf docker-17.04.0-ce.tgz \
&& mv docker/docker /usr/local/bin \
