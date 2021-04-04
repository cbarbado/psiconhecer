# DEVELOPMENT DOCKERFILE
# docker build -t hugo .
# docker run -it -p 1313:1313 -v ${pwd}/src:/app hugo

# hugo server -D --bind 0.0.0.0

# Base image
FROM alpine

# Set the working directory
WORKDIR /app

RUN apk update
RUN apk add --no-cache bash
RUN apk add hugo

# Run command shell
CMD ["/bin/bash"]