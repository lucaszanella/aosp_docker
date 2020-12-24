FROM ubuntu:bionic

RUN apt-get update && apt-get install -y git-core gnupg flex \
bison build-essential zip curl zlib1g-dev gcc-multilib g++-multilib \
libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z1-dev \
libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig gnupg2 python3

ENV PATH="/android_tools:${PATH}"

RUN mkdir -p /android_tools \
&& curl https://storage.googleapis.com/git-repo-downloads/repo > /android_tools/repo \
&& chmod a+x /android_tools/repo && \
sed -i '1s/python/python3/' /android_tools/repo

#RUN gpg --recv-key 8BB9AD793E8E6153AF0F9A4416530D5E920F5C65 \
#&& sh -c 'curl https://storage.googleapis.com/git-repo-downloads/repo.asc | gpg --verify - /android_tools/repo'

WORKDIR /home/project/

RUN git config --global user.name "Lucas Zanella" && \
git config --global user.email "me@lucaszanella.com" && \
git config --global color.ui true

#RUN repo init -u https://android.googlesource.com/platform/manifest

#To checkout a branch:
#RUN repo init -u https://android.googlesource.com/platform/manifest -b android-4.0.1_r1

#RUN repo sync -c -j6