FROM nodered/node-red:3.1.5-18-minimal

WORKDIR /data
COPY package.json /data
COPY package-lock.json /data
RUN npm install --unsafe-perm --no-update-notifier --no-fund --omit=dev
WORKDIR /usr/src/node-red

COPY settings.js /data/settings.js
COPY flows.json /data/flows.json

