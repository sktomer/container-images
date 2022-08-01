FROM scratch
ADD al2022-container-2022.0.20220728.1-x86_64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
    && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-957d3ae3a19e9ce71b665e8cd92c84fbdd09ac787fc6fe6e529d2eb7dda57e9b.tar.gz" \
    && echo "e6514c0ba308c79d2d886e936bb17e7b6c5bc1761cc0264a8bf9c7b97d751f2d  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
