FROM node:6-slim

RUN npm install matrix-appservice-irc --global

ENTRYPOINT matrix-appservice-irc

