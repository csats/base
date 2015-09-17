
FROM node:0.10

ONBUILD ADD /app/bundle /app/bundle
ONBUILD WORKDIR /app/bundle
ONBUILD CMD METEOR_SETTINGS="`/app/settings`" node main.js
