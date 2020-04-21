#!/usr/bin/env bash

# Upload file to box.com

# Example: $ bash box.sh V7Fe9siRTHEs3TmjQOa9F2QoxhmNHjBq box.sh ./box.sh

# Create Developer Token
# https://app.box.com/developers/console/app/ -> app -> configuration -> create token

# variables
token="$1"
filename="$2"
filepath="$3"


# https://developer.box.com/reference/post-files-content/
curl -X POST https://upload.box.com/api/2.0/files/content \
     -H "Authorization: Bearer $token" \
     -H "Content-Type: multipart/form-data" \
     -F attributes="{\"name\":\"$filename\", \"parent\":{\"id\":\"0\"}}" \
     -F file=@$filepath
