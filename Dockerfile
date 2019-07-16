FROM ubuntu:18.04
WORKDIR /opt/angular-server
USER root
RUN apt update
RUN apt-get install curl -y
RUN apt-get install git -y
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs
RUN apt-get install -y build-essential
RUN git clone https://github.com/Nboaram/TeamAPoolProjectUI.git
WORKDIR /opt/angular-server/TeamAPoolProjectUI
RUN git checkout Developer
Run npm install typescript
RUN yes | npm -g install 
RUN yes | npm -g install @angular/cli
EXPOSE 4200
CMD ng serve --host 0.0.0.0
