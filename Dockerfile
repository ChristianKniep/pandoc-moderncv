FROM ubuntu:22.04
ENV DEBIAN_FRONTEND noninteractive 
RUN apt-get update \
 && apt-get install -y \
    wkhtmltopdf \
    python3-pip \
    libimage-exiftool-perl \
    pandoc \
    rsync \
    ruby-dev \
 && gem install compass \
 && gem install susy \
 && rm -rf /var/lib/apt/lists/*
#RUN pip install pandoc-include  