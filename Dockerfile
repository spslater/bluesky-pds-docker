# Base image for the PDS service
FROM ghcr.io/bluesky-social/pds:0.4

# Command to start the PDS service
CMD ["node", "--enable-source-maps", "index.js"]
