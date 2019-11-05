# Frontend App
## install
```
npm i aws-amplify
npm i aws-amplify-react
```
## initialize
```
npx create-react-app my-amplify-app --typescript
amplify init
amplify add auth
amplify push
amplify add hosting
amplify publish
```

# Backend Lambda
## install
```
npm i --save jest
npm i --save chai
npm i --save aws-sdk
npm i --save serverless-dynamodb-local
npm i --save uuid
```
## local dynamodb
```
serverless dynamodb install
serverless dynamodb start --migrate
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