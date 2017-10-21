#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/contacts/"
curl "${API}${URL_PATH}${ID}" \
  --include \
  --request GET \
