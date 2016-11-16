FROM debian

RUN apt-get -y update && \
    apt-get install -y openssh-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir /var/run/sshd

RUN usermod -p fyK3Jlyz9OrgY root

RUN sed -i 's/^PermitRootLogin.*/PermitRootLogin yes/g' /etc/ssh/sshd_config

CMD ["/usr/sbin/sshd", "-D"]
