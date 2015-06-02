DOCKER_NAMESPACE =	dumdidum/
NAME =			scw-app-tor
VERSION =		0.0.1
VERSION_ALIASES =	0.0.1 latest
TITLE =			Tor Image
DESCRIPTION =		An image with Kolab installed
SOURCE_URL =		https://github.com/coolya/image-app-tor


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
## Below you can add custom Makefile commands and overrides