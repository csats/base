
FROM node:0.10

ENV PORT 3000
EXPOSE 3000

ONBUILD ADD /app /app
ONBUILD WORKDIR /app/bundle
ONBUILD RUN cd /app/bundle/programs/server && npm install
ONBUILD CMD METEOR_SETTINGS="`/app/settings`" node main.js
