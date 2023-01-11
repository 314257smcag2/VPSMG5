FROM ubuntu:20.04
RUN apt update && apt-get upgrade -y && apt-get install -y wget curl nano sudo xz-utils
RUN mkdir Proot && cd Proot && wget https://raw.githubusercontent.com/314257smcag2/VPSMG5/main/Part2.sh && wget https://uk.lxd.images.canonical.com/images/ubuntu/focal/amd64/cloud/20230107_07:42/rootfs.tar.xz && tar -xf rootfs.tar.xz && rm -rf rootfs.tar.xz && curl -LO https://proot.gitlab.io/proot/bin/proot
WORKDIR /Proot
RUN chmod 755 proot
EXPOSE 80
CMD  ./proot -S . bash -c "chmod +x Part2.sh && sudo su -c "./Part2.sh""
