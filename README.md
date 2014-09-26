docker-s3-syncdata
==================

Sync data from S3 to data directory on container

## Example

    docker run -v /data \
    -e AWS_ACCESS_KEY_ID=<your-aws-key> \
    -e AWS_SECRET_ACCESS_KEY=<your-aws-secret> \
    -e S3_BUCKET=<your-bucket> \
    -e S3_PATH=<s3-path>
    -e DATA_DIR=<destination path>
    -e REFRESH_TIME=30
    salamandra/s3-syncdata
