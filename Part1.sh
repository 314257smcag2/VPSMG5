rm -rf Proot
mkdir Proot 
cd Proot
wget https://raw.githubusercontent.com/314257smcag2/VPSMG5/main/Part2.sh
wget https://uk.lxd.images.canonical.com/images/ubuntu/focal/amd64/cloud/20230107_07:42/rootfs.tar.xz && tar -xf rootfs.tar.xz && rm -rf rootfs.tar.xz
curl -LO https://proot.gitlab.io/proot/bin/proot && chmod +x proot && ./proot -S . bash -c "chmod +x Part2.sh && sudo su -c "./Part2.sh""
