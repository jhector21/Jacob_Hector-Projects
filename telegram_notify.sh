#!/bin/bash

BOT_TOKEN="YOUR_BOT_TOKEN_HERE"
CHAT_ID="YOUR_CHAT_ID_HERE"

MESSAGE="Motion detected on Raspberry Pi camera."

curl -s -X POST "https://api.telegram.org/bot${BOT_TOKEN}/sendMessage" \
  -d chat_id="${CHAT_ID}" \
  -d text="${MESSAGE}"
