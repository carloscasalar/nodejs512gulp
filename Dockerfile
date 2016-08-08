FROM node:5.12

# Install gulp globally
RUN npm install gulp -g

# Create an unprivilegied user
RUN groupadd -r app && useradd -r -g app app 

# Exposed 3000
EXPOSE 3000

WORKDIR /usr/src/app

CMD [ "gulp" ]
