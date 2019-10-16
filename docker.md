# Docker

[docker doc](https://docs.docker.com/engine/reference/commandline/)

Anzeigen der Docker Images
```docker
docker image ls
```

Container starten
```docker
docker run -it --workdir "/some/remote/dir" --rm --name [image-name] -v "[$HOME/local/file]:[/remote/file]" -v "[/local/dir]:[/remote/dir]" [container-name] /bin/bash
```

