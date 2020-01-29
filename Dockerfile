FROM node
ENV NPM_CONFIG_LOGLEVEL warn
RUN mkdir -p /var/www/clarity
EXPOSE 3000
WORKDIR /var/www/clarity
ADD /nodejs-app/package.json /var/www/clarity
RUN npm install --production
ADD /nodejs-app /var/www/clarity
ENTRYPOINT ["npm", "start"]