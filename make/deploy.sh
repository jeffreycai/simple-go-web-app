#!/bin/bash
BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

## include functions and confs
. ${BASEDIR}/functions.sh

cd $BASEDIR

# quit if not my turn
if [ "$(is_it_my_turn)" == "no" ]; then
  header "Not my turn. Quit"
  exit 0
fi

SOURCE_FOLDER="$BASEDIR/../k8s/$STAGE"

cd SOURCE_FOLDER
# deploy pods
kubectl apply -f $SOURCE_FOLDER/app-deploy.yaml

# deploy service
kubectl apply -f $SOURCE_FOLDER/app-service.yaml