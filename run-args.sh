#!/bin/bash

echo "... Running ....."

let "cnt=1"
for arg in "$@"
do
  let "cnt+=1"
  echo argument $cnt: $arg
done

#env=prod
if [[  "$env" =~ ^(dev|st|sit|uat|preprod|prod) ]]; then
   echo "$env is in the environment list"
else
   echo "$env is not in the environment list"
fi

