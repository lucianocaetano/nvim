#!/bin/bash

API_URL="https://openrouter.ai/api/v1/chat/completions"
API_KEY="$OPEN_ROUTER_TOKEN_API"

prompt=$(cat)

curl -s "$API_URL" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $API_KEY" \
  -d "{
    \"model\": \"meta-llama/llama-3.3-8b-instruct:free\",
    \"messages\": [
      {
        \"role\": \"user\",
        \"content\": \"$prompt\"
      }
    ]
  }" | jq -r '.choices[0].message.content'

