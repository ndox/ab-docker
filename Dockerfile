FROM  centos:latest
MAINTAINER Nicolas Dordet <nicolas@redhat.com>
LABEL description="Apache Bench with optional ENV configuration - forked from https://github.com/edseymour/ab-docker"
RUN yum update -y && yum -y install httpd-tools && yum clean all
ADD start-test.sh /start-test.sh
RUN chmod 555 /start-test.sh

CMD sleep 1000000

#ENTRYPOINT ["/start-test.sh"]
