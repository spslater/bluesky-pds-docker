# Base image for the PDS service
FROM ghcr.io/bluesky-social/pds:0.4

# All the pds stuff needs bash
RUN apk update && apk add --no-cache bash

# Copy the PDS service files
WORKDIR /app
COPY pdsadmin.sh .
COPY pdsadmin/ ./pdsadmin/

# Command to start the PDS service
CMD ["node", "--enable-source-maps", "index.js"]
