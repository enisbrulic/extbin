#! /bin/sh 

filename=`basename $0`

usage() {
  echo "Usage of $filename:\n\t"

  echo "\t$ $filename"
  echo "\t show this usage.\n"

  echo "\t$ $filename json"
  echo "\t list jwt token as json.\n"

  echo "\t$ $filename [exp | iat | auth_time]"
  echo "\t convert unix timestamp to, e.g. from 'exp' key, to human readable date.\n"
}

showJwtToken() {
  jq -R 'split(".") | .[1] | @base64d | fromjson' <<< $(pbpaste)
}

showUnixTimeStampAsDate() {
  jq -R 'split(".") | .[1] | @base64d | fromjson' <<< $(pbpaste) | jq ."$1" | xargs date -ur
}


if [[ -z "$1" ]]; then
  usage
elif [[ "$1" == "json" ]]; then
  showJwtToken
else
  showUnixTimeStampAsDate $1
fi
