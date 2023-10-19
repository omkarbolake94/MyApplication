FROM redhat/ubi9:latest
RUN yum install maven -y
RUN yum install curl -y
RUN curl -fsSL https://get.docker.com -o get-docker.sh
RUN sh get-docker.sh
