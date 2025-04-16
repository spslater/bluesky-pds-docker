#!/usr/bin/env sh

 echo PDS_ADMIN_PASSWORD: $(openssl rand --hex 16)
 echo PDS_JWT_SECRET: $(openssl rand --hex 16)
 echo PDS_PLC_ROTATION_KEY_K256_PRIVATE_KEY_HEX: $(openssl ecparam --name secp256k1 --genkey --noout --outform DER | tail --bytes=+8 | head --bytes=32 | xxd --plain --cols 32)

