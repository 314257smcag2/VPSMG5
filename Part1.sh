rm -rf Proot
mkdir Proot 
cd Proot
wget https://raw.githubusercontent.com/314257smcag2/VPSMG5/main/Part2.sh
curl -skLo gdown https://raw.githubusercontent.com/kmille36/GoogleDriveCurl/main/gdown && chmod +x gdown
bash gdown focal.tar 1rncRR9Gimh8UgWkAo27Q6X8UW5iOXTnL && tar -xf  focal.tar && rm -rf focal.tar
curl -LO https://proot.gitlab.io/proot/bin/proot && chmod +x proot && ./proot -S . bash -c "chmod +x Part2.sh && sudo su -c "./Part2.sh""
