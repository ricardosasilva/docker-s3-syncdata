#!/bin/bash

REFRESH_TIME=${REFRESH_TIME:-600}
AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION:-us-east-1}
S3_DATA_PATH=s3://${S3_BUCKET}/${S3_PATH}

mkdir ${DATA_DIR} -p
while true; do
    aws s3 sync ${S3_DATA_PATH} ${DATA_DIR} --region $AWS_DEFAULT_REGION
    sleep ${REFRESH_TIME}
done