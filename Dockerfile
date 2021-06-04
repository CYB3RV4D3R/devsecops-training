FROM docker.io/cpauley/cpauley-repo:dso-container

COPY --chown=1001:0 . /home/eduk8s/

RUN mv /home/eduk8s/workshop /opt/workshop

RUN fix-permissions /home/eduk8s

USER root

RUN yum install net-tools -y && yum install dnsutils -y && yum install nc -y && yum install mlocate -y && yum install traceroute -y && yum install iputils -y
