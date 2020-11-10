# docker
docker-compose up -d localstack

# docker 
docker-compose up --build app

# invoke local
sls invoke local -f s3listener

# deploy

sls deploy


# enviado arquivo pra bucket
 bash upload-file.sh arquivos-010-vagner test03.csv 

# criar queue 
 bash create-queue.sh file-handler 

# send message
bash send-message.sh https://sqs.us-east-1.amazonaws.com/070691952177/file-handler2 

