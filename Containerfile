FROM quay.io/buildah/stable:v1.42.2

RUN mkdir -p /home/build/.config/containers \
&& (echo '[storage]';echo 'driver = "vfs"') > /home/build/.config/containers/storage.conf

USER build
WORKDIR /home/build