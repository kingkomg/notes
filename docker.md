# Docker

[docker doc](https://docs.docker.com/engine/reference/commandline/)

### Anzeigen der Docker Images
```docker
docker image ls
```

### Container bauen
```
docker build . -t [container-name] --no-cache
```

### Container starten
```docker
docker run -it --workdir "/some/remote/dir" --rm --name [image-name] -v "[$HOME/local/file]:[/remote/file]" -v "[/local/dir]:[/remote/dir]" [container-name] /bin/bash
```

### bsp
```
docker build . -t bad-hackaton --no-cache
docker run -it --workdir "/home/bad-hackaton" --rm --name bad-hackaton -v "$HOME/.aws/:/root/.aws/" -v "$HOME:/home/bad-hackaton" bad-hackaton /bin/bash
```
