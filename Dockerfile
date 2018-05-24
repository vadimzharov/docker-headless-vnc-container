FROM consol/centos-xfce-vnc
ENV REFRESHED_AT 2018-05-24

## Install a custom package(s)
USER 0
RUN yum install -y ${PACKAGES} \
    && yum clean all

## switch back to default user
USER 1000
