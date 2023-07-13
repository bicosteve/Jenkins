FROM centos

RUN yum -y install openssh-server openssh-clients

RUN useradd remote_user && \ 
 echo "1234" | password remote_user --stdin &&  \ 
 mkdir /home/remote_user/.ssh  && \ 
 chmod 700 /home/remote_user/.ssh 

COPY ./id_ed25519.pub /home/remote_user/.ssh/authorized_keys

RUN chown remote_user:remote_user -R /home/remote_user/.ssh/ && \ 
    chmod 600 /home/remote_user/.ssh/authorized_keys

RUN /usr/sbin/sshd-keygen 

CMD /usr/sbin/sshd -D 
