FROM ubuntu:devel

RUN apt-get update \
    && apt-get install --fix-broken --yes \
        curl \
    && curl --output "/tmp/unity.deb" "http://beta.unity3d.com/download/061bcf22327f/unity-editor_amd64-2017.1.0xf3Linux.deb" \
    && dpkg --install --force-depends "/tmp/unity.deb" \
    && apt-get install --fix-broken --yes \
    && rm "/tmp/unity.deb"

