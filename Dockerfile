FROM scratch
ADD amzn2-container-raw-2.0.20220606.1-arm64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
    && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-800a7e3918924b4aaf6f75787edd91de54d919ce798c4adbd8190b5dd187eef0.tar.gz" \
    && echo "ac78714ecd2ea0972b6b72ae2e7ac4b38e0a2d5f5e4751082abe2f4ceee1033d  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
