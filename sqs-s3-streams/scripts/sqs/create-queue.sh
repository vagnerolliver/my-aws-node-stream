#bash scripts/s3/create-bucket.sh meu-bucket
QUEUE_NAME=$1
aws \
    sqs create-queue \
    --queue-name $QUEUE_NAME \
    --endpoint-url=http://localhost:4566
 
# aws \
#     sqs list-queues \
#     -- endpoint-url=http://localhost:4566

 

