# Backend Lambda
## init
```
serverless create -t aws-nodejs --name [name]

serverless-appsync-plugin
npm i --save uuid
npm i --save-dev jest
npm i --save-dev chai
npm i --save-dev aws-sdk
npm i --save-dev serverless-dynamodb-local

serverless deploy --stage production
```
## local dynamodb
```
serverless dynamodb install
serverless dynamodb start --migrate

*** jest ohne aws credentials im projekt ***
DynamoDB creation params
    region: 'localhost',
    endpoint: 'http://localhost:8000',
    accessKeyId: 'DEFAULT_ACCESS_KEY',
    secretAccessKey: 'DEFAULT_SECRET'
```
### aws rds
```
aws rds create-db-instance \
    --allocated-storage 20 --db-instance-class db.m3.medium \
    --db-instance-identifier [dbname] \
    --engine mysql \
    --master-username [user] \
    --master-user-password [password] \
    --vpc-security-group-ids [group-id] \
    --publicly-accessible

aws rds describe-db-instances

aws rds delete-db-instance --db-instance-identifier [dbname] --skip-final-snapshot
```
### mysql
```
docker pull mysql
docker run -it --rm --name mysql-mln1 -p 3306:3306 -e MYSQL_ROOT_PASSWORD=password -v "$HOME/:/home/" mysql bin/bash
mysql -u [user] -p[password] -h [some-db].rds.amazonaws.com
```

### IAM permissions
```

User: arn:aws:iam::187917125870:user/wishy-dev is not authorized to perform: cloudformation:CreateStack on resource: arn:aws:cloudformation:us-east-1:187917125870:stack/serverless-example-dev/*

An error occurred: ApiGatewayRestApi - User: arn:aws:iam::187917125870:user/wishy-dev is not authorized to perform: apigateway:POST on resource: arn:aws:apigateway:us-east-1::/restapis (Service: AmazonApiGateway; Status Code: 403; Error Code: AccessDeniedException; Request ID: bebeda37-37c6-4be7-8cdd-c8309923a55d).

An error occurred: IamRoleLambdaExecution - API: iam:CreateRole User: arn:aws:iam::187917125870:user/wishy-dev is not authorized to perform: iam:CreateRole on resource: arn:aws:iam::187917125870:role/serverless-example-dev-us-east-1-lambdaRole.
```

### websockets troubleshooting
```
npm i -g wscat
wscat -c 

#find blocking application
lsof -i :15001

export SLS_DEBUG=*

```