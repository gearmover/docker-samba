FROM ubuntu:latest

MAINTAINER Chris Pergrossi <c.pergrossi@ufl.edu>

RUN mkdir /data && \
	useradd -M sambauser && \
	chown sambauser:root /data

RUN apt-get update && \
 	apt-get install samba -y

VOLUME /data

ADD smb.conf /etc/samba/smb.conf
ADD run.sh /run.sh

CMD ["/run.sh"]
