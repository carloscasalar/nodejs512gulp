FROM node:5.12

# Install gulp globally
RUN npm install gulp -g

# Create an unprivilegied user
RUN groupadd -r app && useradd -r -g app app 

# Create and expose a work dir
RUN mkdir /data
RUN chown app:app /data


# Exposed 3000
EXPOSE 3000

WORKDIR /data

CMD [ "gulp" ]
