FROM node:14.11.0-slim 
WORKDIR /usr/app
COPY ./package.json ./
RUN npm install 
COPY ./ ./
CMD ["npm","start"]

FROM nginx
COPY --from=0 /usr/app /usr/share/nginx/html