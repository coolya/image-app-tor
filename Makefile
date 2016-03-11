DOCKER_NAMESPACE =	dumdidum/image-app-tor
NAME =			scw-app-tor
VERSION =		0.1.0
VERSION_ALIASES =	0.1.0 latest
TITLE =			Tor Image
DESCRIPTION =		A none exit Tor relay
SOURCE_URL =		https://github.com/coolya/image-app-tor


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
## Below you can add custom Makefile commands and overrides