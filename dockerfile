FROM centos:7

RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash -
RUN yum update -y
RUN yum install -y vim
RUN yum install -y less
RUN yum install -y awscli
RUN yum install -y gcc-c++
RUN yum install -y make
RUN yum install -y nodejs
RUN yum install -y java-1.8.0-openjdk-headless.x86_64
RUN yum install -y maven
RUN yum install -y git
RUN npm i -g serverless --unsafe-perm