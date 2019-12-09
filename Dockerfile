FROM docker:latest

RUN apt-get update
RUN apt-get install -y curl gnupg apt-transport-https

RUN curl -OL https://download.arangodb.com/arangodb35/DEBIAN/Release.key
RUN apt-key add - < Release.key
RUN echo 'deb https://download.arangodb.com/arangodb35/DEBIAN/ /' | tee /etc/apt/sources.list.d/arangodb.list
RUN apt-get update
RUN apt-get install -y arangodb3=3.5.3-1
