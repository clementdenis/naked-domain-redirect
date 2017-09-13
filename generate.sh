#!/usr/bin/env bash

nakedDomain=$1
projectId=$2

#TODO check both variables

mkdir -p ${nakedDomain}
cp template/* ${nakedDomain}/
find ${nakedDomain} -type f -exec sed -i "s/\${nakedDomain}/${nakedDomain}/g;s/\${projectId}/${projectId}/g" {} \;
cd ${nakedDomain}
bash deploy.sh
cd ..
