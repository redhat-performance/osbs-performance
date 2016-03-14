FROM rhel7

LABEL Name=rhel7/average-size-test
LABEL BZComponent=average-size-test-docker
LABEL Version=1.0
LABEL Release=2

RUN yum -y update && \
    yum install -y ghostscript foomatic-db && \
    yum install -y kubernetes

CMD uname -a && env
