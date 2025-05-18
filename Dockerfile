# simpel and well supports by- ffmpeg
FROM ubuntu:20.04
# if asked q aswers defult answers that way it dosent bother us in the instulation etc.
ENV DEBIAN_FRONTEND=noninteractive
# to make sure i have an up to date list of software
RUN apt-get update && \
# -y - that way linux is not going to crash when it asked q and no one could answer so -y answers yes 
apt-get install -y ffmpeg && \
apt-get clean && \
# you delete because you want the image size to be smaler. this dirctary is in the container
rm -rf /var/lib/apt/lists/*

WORKDIR /my_first_processing

ENTRYPOINT ["ffmpeg"]
