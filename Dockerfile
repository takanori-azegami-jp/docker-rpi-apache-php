FROM almalinux:9.1

RUN dnf -y update \
    && dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm \
    && dnf install -y https://rpms.remirepo.net/enterprise/remi-release-9.rpm \
    && dnf install -y httpd php vim procps \
    && dnf -y install supervisor \
    && dnf clean all

RUN mkdir -p /run/php-fpm \
    && chown -R apache:apache /run/php-fpm

COPY ./supervisord.conf /etc/supervisord.d/supervisord.conf
RUN chmod 644 /etc/supervisord.d/supervisord.conf

CMD ["supervisord", "-c", "/etc/supervisord.d/supervisord.conf"]
