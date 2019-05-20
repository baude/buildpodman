FROM registry.fedoraproject.org/fedora:latest

RUN dnf -y install btrfs-progs-devel \
              bzip2 \
              device-mapper-devel \
              findutils \
              git \
              glib2-devel \
              glibc-static \
              gnupg \
              golang \
              golang-github-cpuguy83-go-md2man \
              gpgme-devel \
              libassuan-devel \
              libseccomp-devel \
              libselinux-devel \
              systemd-devel \
              containers-common \
              make \
              ostree-devel \
              golang-github-cpuguy83-go-md2man && dnf clean all

COPY build.sh  /build.sh

LABEL RUN="podman run -it -v \$PWD/output:/output IMAGE"
CMD sh /build.sh
