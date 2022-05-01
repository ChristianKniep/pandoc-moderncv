# Based on Ubuntu 14.04
FROM ubuntu:16.04

# Install Packages, via apt-get. 
RUN apt-get update && apt-get install -y \
	build-essential \
	pandoc \
	wkhtmltopdf \
	xvfb \
	ttf-wqy-zenhei \
	git \
	rubygems-integration \
	ruby-dev \
	libimage-exiftool-perl \
	python-twisted

# Now Change wkhtmltopdf
RUN echo 'xvfb-run --server-args="-screen 0, 1024x768x24" /usr/bin/wkhtmltopdf $*' > /usr/bin/wkhtmltopdf.sh
RUN chmod a+x /usr/bin/wkhtmltopdf
RUN chmod a+x /usr/bin/wkhtmltopdf.sh 
RUN ln -s /usr/bin/wkhtmltopdf.sh /usr/local/bin/wkhtmltopdf

# Now Run gems 
RUN gem install compass
RUN gem install susy


