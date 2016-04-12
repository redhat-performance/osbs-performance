FROM rhel7
MAINTAINER Red Hat, Inc.

LABEL BZComponent="small-size-test-docker"
LABEL Name="rhel7/small-size-test"
LABEL Version="1.0"
LABEL Release="7.2"
LABEL Architecture="x86_64"

CMD ["/usr/bin/bash"]
