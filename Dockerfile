FROM scratch
ADD amzn-container-minimal-2018.03.0.20220705.1-x86_64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
    && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-88cdcaaae92c13e9b16f4e24733dac64044525869a4d99c16f84d49e67daaf62.tar.gz" \
    && echo "4f388bc0087173f93599d0e9c5b6548cfea6212e7e88c1955793515a6efdae5b  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
