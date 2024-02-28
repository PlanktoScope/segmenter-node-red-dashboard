FROM nodered/node-red:3.1.5-18-minimal

WORKDIR /data
COPY --chown=node-red:node-red package.json /data
COPY --chown=node-red:node-red package-lock.json /data
RUN ls -l && npm install --unsafe-perm --no-update-notifier --no-fund --omit=dev
WORKDIR /usr/src/node-red

COPY --chown=node-red:node-red settings.js /data/settings.js
COPY --chown=node-red:node-red flows.json /data/flows.json

