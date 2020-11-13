# my-aws-node-stream
Processando arquivos sob demanda com Node.js Streams

# tooling-s3-sqs
## install 
```
cd tooling-s3-sqs

npm i
``` 

## run local
```
npm start
```

## build docker
```
docker-compose up --build
```

# sqs-s3-stream

## install 
```
cd sqs-s3-streams

npm i
``` 

### docker localstack
```
docker-compose up -d localstack
```

### docker app 
```
docker-compose up --build app
```

## Commmands

### invoke local
```
sls invoke local -f s3listener

sls invoke local -f sqslistener
```

### deploy
```
sls deploy
```

### invoke
```
sls invoke -f s3listener

sls invoke -f sqslistener
```

### criar bucket 
```
cd scripts/s3

bash create-bucket.sh $BUCKET_NAME
```

### subir arquivo csv p/ bucket

``` 
cd scripts/s3

bash upload-file.sh $BUCKET_NAME test.csv
```

### criar queue 
```
cd scripts/sqs

bash create-queue.sh $QUEUE_NAME 
```

### send message
```
cd scripts/sqs

bash send-message.sh $QUEUE_URL
```

### apaga tudo de um bucket
```
aws s3 rm s3://$BUCKET_NAME --recursive
```

### por ultimo remove todos os recurso do serverless
### bucket tem que estar vazio
```
sls remove
```

## Hint
### setting up localstack
https://lobster1234.github.io/2017/04/05/working-with-localstack-command-line/ 


Fonte: Curso ErickWendell AwsServerlles