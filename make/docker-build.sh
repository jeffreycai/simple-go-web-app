#!/bin/bash
BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

## include functions and confs
. ${BASEDIR}/functions.sh

# build image and push
RUN docker build . -t "app-sample-eks"
RUN docker push 123456.dkr.ecr.ap-southeast-2.amazonaws.com/app-sample-eks


