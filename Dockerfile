FROM rustdesk/rustdesk-server-s6:1

ENV ENCRYPTED_ONLY = 0

ADD ./docker_entrypoint.sh /usr/local/bin/docker_entrypoint.sh
RUN chmod a+x /usr/local/bin/docker_entrypoint.sh

ENTRYPOINT [ "/usr/local/bin/docker_entrypoint.sh" ]