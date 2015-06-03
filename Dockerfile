## -*- docker-image-name: "armbuild/scw-app-kolab:latest" -*-
FROM armbuild/scw-distrib-debian:jessie
MAINTAINER Scaleway <kolja.dummann@logv.ws> (@dumdidum)

# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter

ADD ./patches/ /

RUN echo "deb http://deb.torproject.org/torproject.org jessie main" > /etc/apt/sources.list.d/tor.list
RUN echo "deb-src http://deb.torproject.org/torproject.org jessie main" >> /etc/apt/sources.list.d/tor.list


RUN  gpg --keyserver keys.gnupg.net --recv 886DDD89 && \
	gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -

# Install packages
RUN apt-get -q update                   \
 && apt-get --force-yes -y -qq upgrade
 RUN  apt-get --force-yes install -y -q   \
	tor

# Clean rootfs from image-builder

RUN /usr/local/sbin/builder-leave
