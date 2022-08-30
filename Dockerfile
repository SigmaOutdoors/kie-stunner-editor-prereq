# Rocky Linux 9 (Rocky Linux 9.0 (Blue Onyx)).
FROM rockylinux:9
# It is always nice to have the latest
#FROM rockylinux:latest

# Update all installed dnf packages.
RUN dnf update -y && dnf clean all

# Need to install the ps command.
RUN dnf install -y procps

RUN dnf install -y nodejs
RUN dnf install -y  maven
RUN dnf install -y  go
RUN dnf install -y  curl
RUN dnf install -y  npm
RUN dnf install -y  zip
RUN curl https://github.com/kiegroup/kie-tools/archive/refs/heads/main.zip -L -o /tmp/kie-git-download.zip
RUN npm install -g pnpm@7.0.0
RUN dnf install -y epel-release
RUN dnf install -y chromium
RUN dnf install -y gtk3-devel
RUN dnf -y makecache
RUN dnf -y install libappindicator-gtk3-devel
RUN npm install -g http-server

#Unzip to /etc where there is more room.
RUN unzip -o -d /etc /tmp/kie-git-download.zip

RUN cd /etc/kie-tools-main ; pnpm bootstrap 

RUN cd /etc/kie-tools-main ; pnpm -F @kie-tools/stunner-editors... build:dev

# Copy in the necessary file hierarchy.
COPY xcp /

# this is in EntryPoint.sh
CMD [ "/bin/bash", "-c", "/opt/etc/Scripts/EntryPoint.sh" ]
