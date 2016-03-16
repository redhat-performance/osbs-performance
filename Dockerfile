#
# This is the base image from which all OpenShift Origin images inherit. Only packages
# common to all downstream images should be here.
#
# The standard name for this image is openshift3/ose-base
#
FROM rhel7:latest

LABEL Name="rhel7/average-size-test"
LABEL Version="1.0"
LABEL Release="5"
LABEL Architecture="x86_64"
LABEL BZComponent="average-size-test-docker"

# components from EPEL must be installed in a separate yum install step
RUN yum-config-manager --enable rhel-7-server-rpms --enable rhel-7-server-optional-rpms || :
RUN yum clean all
RUN yum install -y git tar wget hostname sysvinit-tools util-linux bsdtar \
    socat ethtool device-mapper iptables && \
    yum clean all
