
FROM node:0.10

ONBUILD ADD /app /app
ONBUILD WORKDIR /app/bundle
ONBUILD CMD METEOR_SETTINGS="`/app/settings`" node main.js
