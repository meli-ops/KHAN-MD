FROM node:lts-buster
USER root
USER node
RUN git clone https://github.com/JawadTechX/DJ /home/node/DJ
WORKDIR /home/node/DJ
RUN chmod -R 777 /home/node/DJ/
RUN yarn install --network-concurrency 1
EXPOSE 7860
ENV NODE_ENV=production
CMD ["npm", "start"]
