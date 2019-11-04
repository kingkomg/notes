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
### mysql
```
docker pull mysql
docker run --rm --name mysql-mln1 -p 3306:3306 -e MYSQL_ROOT_PASSWORD=password mysql
docker exec -it mysql-mln1 bin/bash
mysql -u [user] -p[password] -h [rds-endpoint]


docker run -it --rm --name mysql-mln1 -p 3306:3306 -e MYSQL_ROOT_PASSWORD=password -v "$HOME/:/home/" mysql bin/bash
```