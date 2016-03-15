FROM debian:jessie

MAINTAINER janes <miscjanes@gmail.com>

# Install program to configure locales
RUN apt-get update \
    && apt-get install -y locales \
    && dpkg-reconfigure locales && \
        locale-gen C.UTF-8 \
    && /usr/sbin/update-locale LANG=C.UTF-8

# Install needed default locale for Makefly
RUN echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen \
    && locale-gen

# Set default locale for the environment
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8


RUN  apt-get install -y --no-install-recommends \
        autoconf automake bison build-essential bzip2 \
        ca-certificates curl g++ gawk gcc git libc6-dev \
        libffi-dev libgdbm-dev libncurses5-dev libreadline6 \
        libreadline6-dev libsqlite3-0 libsqlite3-dev libssl-dev \
        libtool libxml2-dev libxslt1-dev libyaml-dev make openssl \
        patch pkg-config procps sqlite3 subversion zlib1g zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

# add user beef
RUN useradd -d /opt/beef -m -s /bin/bash beef

WORKDIR /opt/beef/
COPY code/ /opt/beef/

RUN ["chown", "beef:beef", "*"]
RUN ["chmod", "u+x", "*.sh"]

RUN ["su", "beef", "-lc", "./install.sh"]

EXPOSE 3000

CMD ["su", "beef", "-lc", "cd bf && ./beef"]




