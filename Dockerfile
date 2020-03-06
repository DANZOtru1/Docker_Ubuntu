FROM ubuntu
RUN apt update && apt install nano imagemagick -y
COPY photoScr.sh /home
COPY AXSiUosRvN0.jpg /home
RUN chmod 777 /home/photoScr.sh