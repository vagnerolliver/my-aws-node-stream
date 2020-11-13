# docker
docker-compose up -d localstack

# docker 
docker-compose up --build app

# invoke local
sls invoke local -f s3listener

# deploy

sls deploy


# enviado arquivo pra bucket
 bash upload-file.sh arquivos-010-vagner test.csv

# criar queue 
 bash create-queue.sh file-handler 

# send message
bash send-message.sh https://sqs.us-east-1.amazonaws.com/070691952177/file-handler2 

# apaga tudo de um bucket
aws s3 rm s3://arquivos-010-vagner --recursive


# por ultimo remove todos os recurso do servelles
# bucket tem que estar vazio
sls remove
