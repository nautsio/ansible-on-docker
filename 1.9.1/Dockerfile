FROM alpine:3.1

MAINTAINER Cargonauts cargonauts@xebia.com

ENV ANSIBLE_VERSION 1.9.1
ENV ANSIBLE_CONFIG /ansible.cfg

RUN \
    apk add --update python py-pip py-crypto openssh-client sshpass && \
    rm -rf /var/cache/apk/*

RUN \
    pip install ansible==${ANSIBLE_VERSION}

ADD ansible.cfg /ansible.cfg

ADD run.sh /run.sh

RUN chmod 755 /run.sh

ENTRYPOINT ["/run.sh"]
