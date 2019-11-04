## S3
```
aws s3 mb s3://[name]                               # make bucket
aws s3 rb s3://[name] --force                       # remove bucket with objects in it
aws s3 ls s3://hackathon-hausaufgabe --recursive    # list all files and "folders"
aws s3 cp <source> <target>
aws s3 sync <source> <target>
aws s3 website s3://[name] --index-document index.html --error-document error.html
```

## LEX
```
aws lex-models get-bots
```

## Serverless
```
serverless create -t awsnodejs
serverless deploy --stage production
```
### local
```
sls dynamodb install
sls dynamodb start --migrate --stage test
```