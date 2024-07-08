FROM node:20.11.1-alpine3.19 as dev

WORKDIR /usr/src/app

COPY . .

USER node


# # Install required packages
# RUN apt-get update -qq \
#     && apt-get install -qqy apt-transport-https ca-certificates curl gnupg2 software-properties-common

# # Install Docker using Docker's official script
# RUN curl -fsSL https://get.docker.com -o get-docker.sh \
#     && sh get-docker.sh

# Add Jenkins user to the docker group
# RUN usermod -aG docker jenkins