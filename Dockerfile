# Node image
FROM node:8

# Create app directory
WORKDIR /src

# Install app dependencies
COPY . .

RUN npm install -g gulp
RUN npm install

EXPOSE 3000
CMD ["gulp"]