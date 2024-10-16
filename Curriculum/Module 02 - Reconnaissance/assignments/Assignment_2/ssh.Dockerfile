FROm docker.io/library/debian:bookworm-slim

EXPOSE 22

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y openssh-server && \
    # fix from https://askubuntu.com/questions/1110828/ssh-failed-to-start-missing-privilege-separation-directory-var-run-sshd
    mkdir /var/run/sshd && \
    # Disable Password-Authentication
    sed -i "s/#PasswordAuthentication yes/PasswordAuthentication no/g" /etc/ssh/sshd_config && \
    # Disable Root-Login
    sed -i "s/#PermitRootLogin prohibit-password/PermitRootLogin no/g" /etc/ssh/sshd_config && \
    # Disable Public-Key Authentication
    sed -i "s/#PubkeyAuthentication yes/PubkeyAuthentication no/g" /etc/ssh/sshd_config && \
    # Disable PAM
    sed -i "s/UsePAM yes/UsePAM no/g" /etc/ssh/sshd_config &&\
    # Do not permit empty passwords
    sed -i "s/#PermitEmptyPasswords no/PermitEmptyPasswords no/g" /etc/ssh/sshd_config

CMD ["/usr/sbin/sshd", "-D"]
