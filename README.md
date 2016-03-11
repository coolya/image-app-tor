#  Tor Relay image on Scaleway

[![Build Status](https://travis-ci.org/coolya/image-app-tor.svg?branch=master)](https://travis-ci.org/coolya/image-app-tor)

Scripts to build Tor relay image on Scaleway

This image is built using [Image Tools](https://github.com/scaleway/image-tools) and depends on  [Debian Jessie](https://github.com/scaleway/image-debian) image.


---

**This image is meant to be used on a C1 & C2 server.**

We use the Docker's building system and convert it at the end to a disk image that will boot on real servers without Docker. Note that the image is still runnable as a Docker container for debug or for inheritance.

[More info](https://github.com/scaleway/image-tools)


---

## Changelog


### 0.1.0 (2016-03-11)

* use new build system to make it ready for X64

### 0.0.3 (2015-06-03)

This initial version contains:

* config items (relay name and ip adress) read from scaleway metadata
* start tor as a relay on boot


---

## Install

Build and write the image to /dev/nbd1 (see [documentation](https://www.scaleway.com/docs/create-an-image-with-docker/))

    $ make install

Full list of commands available at: [scaleway/image-tools](https://github.com/scaleway/image-tools/#commands)


---
