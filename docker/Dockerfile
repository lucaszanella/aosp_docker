FROM ubuntu:bionic

RUN apt-get update && apt-get install -y git-core gnupg flex \
bison build-essential zip curl zlib1g-dev gcc-multilib g++-multilib \
libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z1-dev \
libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig gnupg2 python3 rsync \
libpulse-dev

ENV PATH="/android_tools:${PATH}"

RUN mkdir -p /android_tools \
&& curl https://storage.googleapis.com/git-repo-downloads/repo > /android_tools/repo\
&& chmod a+x /android_tools/repo

#RUN echo 'alias python=python3' >> ~/.bashrc
#link is beter than alias because some repos like external/qemu looks for python executable in $PATH 
RUN ln -s /usr/bin/python3 /usr/bin/python

RUN apt-get install -y python3-pip

#&& chmod a+x /android_tools/repo && \
#sed -i '1s/python/python3/' /android_tools/repo

#RUN gpg --recv-key 8BB9AD793E8E6153AF0F9A4416530D5E920F5C65 \
#&& sh -c 'curl https://storage.googleapis.com/git-repo-downloads/repo.asc | gpg --verify - /android_tools/repo'

WORKDIR /home/project/

RUN git config --global user.name "Lucas Zanella" && \
git config --global user.email "me@lucaszanella.com" && \
git config --global color.ui true

#for android emulator only
RUN pip3 install absl-py

RUN /bin/bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"

RUN apt-get install -y libc6-dbg gdb valgrind

#RUN repo init -u https://android.googlesource.com/platform/manifest

#To checkout a branch:
#RUN repo init -u https://android.googlesource.com/platform/manifest -b android-4.0.1_r1

#RUN repo sync -c -j6
