FROM quay.io/ansible/awx-ee:24.6.1
USER root
RUN dnf install -y grub2-tools-minimal openssl gcc python3.9-devel openldap-devel butane
#RUN alternatives --install /usr/bin/python python /usr/bin/python3.11 311
RUN curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 && chmod +x get_helm.sh && ./get_helm.sh && curl -fsSL -o /usr/local/bin/kubeadm https://dl.k8s.io/release/v1.29.3/bin/linux/amd64/kubeadm && chmod +x /usr/local/bin/kubeadm
RUN pip3 install pynetbox netaddr pexpect py-pure-client purestorage dnspython python-ldap passlib
#RUN pip3.11 install --upgrade ansible-core==2.19.0
RUN useradd -u 1000 -m -s /bin/bash awx
USER 1000
