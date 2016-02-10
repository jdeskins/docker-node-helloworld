FROM node

# Update date to rebuild cached image
ENV REFRESHED_AT 2016-02-10

# File Author / Maintainer
MAINTAINER Jeff Deskins


# Install and cache app dependencies
COPY package.json /src/package.json
RUN cd /src; npm install

# Define working directory
WORKDIR /src

# Bundle app source
COPY . /src

EXPOSE  8080
CMD ["npm", "start"]
