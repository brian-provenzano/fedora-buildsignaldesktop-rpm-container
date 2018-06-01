# Version: 0.0.1
FROM fedora:latest
LABEL org.thenuclei.creator="Brian Provenzano" \
      org.thenuclei.email="bproven@example.com"
USER root
RUN curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo
RUN dnf install git npm rpm-build yarn python2 gcc-c++ -y
COPY build-signal-yarnmethod.sh /root/build-signal-yarnmethod.sh
ENTRYPOINT [ "/root/build-signal-yarnmethod.sh" ]