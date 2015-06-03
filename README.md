#  Tor Relay image on Scaleway

[![Build Status](https://travis-ci.org/coolya/image-app-tor.svg?branch=master)](https://travis-ci.org/coolya/image-app-tor)

Scripts to build Tor relay image on Scaleway

This image is built using [Image Tools](https://github.com/scaleway/image-tools) and depends on  [Debian Jessie](https://github.com/scaleway/image-debian) image. This is not offically available yet. In order to use it you have to build it manually before build this image.


---

**This image is meant to be used on a C1 server.**

We use the Docker's building system and convert it at the end to a disk image that will boot on real servers without Docker. Note that the image is still runnable as a Docker container for debug or for inheritance.

[More info](https://github.com/scaleway/image-tools)


---

## Changelog


### 0.0.3 (2015-06-03)

This initial version contains:

* config items (relay name and ip adress) read from scaleway metadata
* start tor as a relay on boot


---

## Install

Build and write the image to /dev/nbd1 (see [documentation](https://www.scaleway.com/docs/create_an_image_with_docker))

    $ make install

Full list of commands available at: [scaleway/image-tools](https://github.com/scaleway/image-tools/#commands)


---
