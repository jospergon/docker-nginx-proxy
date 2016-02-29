FROM ubuntu:14.04

RUN apt-get update

RUN apt-get install -y nano wget dialog net-tools

RUN apt-get install -y nginx

RUN rm -v /etc/nginx/nginx.conf

ADD nginx.conf /etc/nginx/

EXPOSE 80

ENV root /root

ADD run.sh $root
RUN chmod u+x $root/run.sh

WORKDIR $root

CMD ["sh", "run.sh"]
