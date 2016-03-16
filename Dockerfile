FROM rhel7
MAINTAINER Red Hat, Inc.

LABEL BZComponent="average-size-test-docker"
LABEL Name="rhel7/average-size-test"
LABEL Version="1.0"
LABEL Release="6"
LABEL Architecture="x86_64"

ENV container docker
LABEL RUN="docker run -it --name NAME --privileged --ipc=host --net=host --pid=host -e HOST=/host -e NAME=NAME -e IMAGE=IMAGE -v /run:/run -v /var/log:/var/log -v /etc/machine-id:/etc/machine-id -v /etc/localtime:/etc/localtime -v /:/host IMAGE"

# Make sure that docs are installed in this image and every other layer built on top of it
RUN [ -e /etc/yum.conf ] && sed -i '/tsflags=nodocs/d' /etc/yum.conf || true

RUN yum -y reinstall "*" && yum clean all

RUN yum -y install \
  abrt \
  atomic \
  atomic-pkglayer \
  bash-completion \
  bc \
  bind-utils \
  blktrace \
  btrfs-progs \
  crash \
  docker \
  docker-python \
  docker-selinux \
  e2fsprogs \
  ethtool \
  file \
  findutils \
  gcc \
  gdb \
  gdb-gdbserver \
  git \
  glibc-common \
  glibc-utils \
  hwloc \
  iotop \
  iproute \
  iputils \
  kernel \
  kube* \
  less \
  ltrace \
  ltrace \
  mailx \
  man-db \
  nc \
  net-tools \
  netsniff-ng \
  numactl \
  numactl-devel \
  ostree \
  parted \
  passwd \
  pciutils \
  pcp \
  perf \
  perf \
  procps-ng \
  psmisc \
  python-rhsm \
  redhat-release-server \
  redhat-support-tool \
  rootfiles \
  rpm-ostree-client \
  screen \
  sos \
  strace \
  strace \
  subscription-manager \
  sysstat \
  systemd \
  systemtap \
  systemtap-client \
  tar \
  tcpdump \
  tcpdump \
  vim-enhanced \
  vim-minimal \
  which \
  xauth \
  xfsprogs \
  yum && yum clean all

# Workaround for locale error
RUN yum -y reinstall glibc-common

CMD ["/usr/bin/bash"]

