#choose or find the base image from the docker hub -node and alpine
FROM node:12.18.3-alpine3.9

# now we need to set a working directory
WORKDIR /usr/src/app

#Now we to copy the code from 
COPY . /usr/src/app

# Install our packages
RUN npm install

# Expose our web application to a port
EXPOSE 8080

# Now we need to create the executable file for container 
CMD ["npm", "start"]
