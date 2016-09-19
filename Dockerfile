FROM node:6.6.0
RUN apt-get update

# use changes to package.json to force Docker not to use the cache
# when we change our application's nodejs dependencies:
ADD package.json /tmp/package.json
RUN cd /tmp && npm install --no-optional --production
RUN mkdir -p /opt/app && cp -a /tmp/node_modules /opt/app/

# From here we load our application's code in, therefore the previous docker
# "layer" thats been cached will be used if possible
WORKDIR /opt/app
ADD . /opt/app

ENV SERVICE_NAME=node-benchmarkings
ENV SERVICE_TAGS=node-benchmarkings
ENV NODE_ENV production
ENV NODE_PATH ./src
ENV PORT=3000

EXPOSE 3000
CMD ["npm", "run", "start"]
