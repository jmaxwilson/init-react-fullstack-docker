FROM node:latest
WORKDIR /usr/src/app 
RUN npm install -g yo generator-relay-fullstack
RUN adduser --disabled-password --gecos "" --shell /bin/bash yeoman; \
  echo "yeoman ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
ENV HOME /home/yeoman
USER yeoman
CMD ["yo","relay-fullstack"]