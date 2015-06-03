# image-app-tor
tor none exit relay on scaleway

It is based on jessie debian. To build you will need to build the debian jessie base image on your own.
It's currently not available via docker hub. To do so clone this [repo](https://github.com/scaleway/image-debian), 
go to the jessie folder and run `make shell`. Once finised exit the shell back to the root, change to this repo and run `make install`.
