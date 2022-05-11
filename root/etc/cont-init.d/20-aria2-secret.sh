#!/usr/bin/with-contenv bash

TOKEN=$(echo -n "$ARIA2_TOKEN" | base64)

sed -i "s/secret:\"\"/secret:\"$TOKEN\"/" /app/index.html
