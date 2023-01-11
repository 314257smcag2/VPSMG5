FROM ubuntu:20.04
RUN apt update && apt-get upgrade -y && apt-get install -y wget curl nano sudo xz-utils
RUN wget https://raw.githubusercontent.com/314257smcag2/VPSMG5/main/Part1.sh
RUN chmod 755 Part1.sh
EXPOSE 80
CMD  ./Part1.sh
