FROM rhel7

LABEL Name=rhel7/average-size-test
LABEL Version=1.0
LABEL Release=1

RUN yum install -y ghostsript
RUN yum install -y cups

CMD uname -a && env
