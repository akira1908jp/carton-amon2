FROM akira1908jp/docker-carton
MAINTAINER akira1908jp@gmail.com


RUN apt-get update

RUN mkdir /app
WORKDIR /app
ADD cpanfile /app/cpanfile
RUN carton install

ADD run /app/run
RUN chmod +x /app/run

EXPOSE 5000
ENTRYPOINT ["/app/run"]
