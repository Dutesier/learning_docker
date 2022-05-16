FROM alpine

ENV USER sandash
RUN apk add --update --no-cache openssh
RUN mkdir /var/run/sshd
RUN adduser --disabled-password --gecos "" $USER
RUN adduser $USER sudo
COPY ssh_key /home/$USER/.ssh/authorized_keys
RUN chown $USER /home/$USER/.ssh/authorized_keys
RUN chown -R $USER:$USER /home/$USER/.ssh/authorized_keys
RUN chmod 700 /home/$USER/.ssh/authorized_keys
EXPOSE 22
RUN /usr/bin/ssh-keygen -A

CMD ["/usr/sbin/sshd", "-D"]
