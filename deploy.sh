#!/bin/bash

AWS_CMD=`which aws 2>/dev/null`

if [ -z $AWS_CMD ]
then
    echo "AWS command line tools not found. Please run 'pip install aws-cli'."
    exit 1
fi

$AWS_CMD s3 sync --delete --exclude .git/\* --exclude deploy.sh ./ s3://zooniverse-static/logs.zooniverse.org/
