## -*- docker-image-name: "scaleway/tor:latest" -*-
FROM scaleway/debian:amd64-jessie
# following 'FROM' lines are used dynamically thanks do the image-builder
# which dynamically update the Dockerfile if needed.
#FROM scaleway/debian:armhf-jessie	# arch=armv7l
#FROM scaleway/debian:arm64-jessie	# arch=arm64
#FROM scaleway/debian:i386-jessie	# arch=i386
#FROM scaleway/debian:mips-jessie	# arch=mips


# Prepare rootfs for image-builder
RUN /usr/local/sbin/scw-builder-enter


# Upgrade system and install packages
RUN echo "deb http://deb.torproject.org/torproject.org jessie main" > /etc/apt/sources.list.d/tor.list       \
 && echo "deb-src http://deb.torproject.org/torproject.org jessie main" >> /etc/apt/sources.list.d/tor.list  \
 && gpg --keyserver keys.gnupg.net --recv 886DDD89                                                           \
 && gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -                               \
 && apt-get -q update                                                                                        \
 && apt-get --force-yes -y -qq upgrade                                                                       \
 && apt-get --force-yes install -y -q tor                                                                    \
 && apt-get clean

# Patch rootfs
ADD ./overlay/ /

# Enable tor service
RUN systemctl enable setup-tor.service

# Clean rootfs from image-builder
RUN /usr/local/sbin/scw-builder-leave
