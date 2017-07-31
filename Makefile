NAME =			tor
VERSION =		latest
VERSION_ALIASES =	0.2.0
TITLE =			Tor Image
DESCRIPTION =		A none exit Tor relay
SOURCE_URL =		https://github.com/scaleway-community/scaleway-tor
DEFAULT_IMAGE_ARCH =	x86_64


IMAGE_VOLUME_SIZE =	50G
IMAGE_BOOTSCRIPT =	latest
IMAGE_NAME =		Tor


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - https://j.mp/scw-builder | bash
-include docker-rules.mk
## Below you can add custom Makefile commands and overrides
