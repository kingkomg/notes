# Docker

[docker doc](https://docs.docker.com/engine/reference/commandline/)

```docker
# MySQL docker image downloaden
docker pull mysql   
            
# auflisten der docker images
docker image ls                 

# Container bauen
docker build . -t [container-name] --no-cache   

# Container ausführen|verbinden
docker run --rm --name mysql-mln1 -p 3306:3306 -e MYSQL_ROOT_PASSWORD=password mysql
docker exec -it mysql-mln1 bin/bash
```

### bsp
```
docker run -it --workdir "/some/remote/dir" --rm --name [image-name] -v "[$HOME/local/file]:[/remote/file]" -v "[/local/dir]:[/remote/dir]" [container-name] /bin/bash

docker build . -t bad-hackaton --no-cache
docker run -it --workdir "/home/mln" --rm --name aws-mln1 -p 8000:8000 -v "$HOME/.aws-mln/:/root/.aws/" -v "$HOME:/home/mln" aws-mln /bin/bash

docker pull mysql
docker run --rm --name mysql-mln1 -p 3306:3306 -e MYSQL_ROOT_PASSWORD=password mysql
docker exec -it mysql-mln1 bin/bash
```
### docker - mysql error
```docker
# Fehler: 
Client does not support authentication protocol requested by server; consider upgrading MySQL client
# Fix:
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'password';
FLUSH PRIVILEGES;
```
alternativ: [How to create a JavaScript Interface For MySQL Document Store via MySQL Shell 8.0](https://medium.com/javascript-in-plain-english/javascript-interface-for-mysql-document-store-via-mysql-shell-8-0-d9a98c91e5fc)
