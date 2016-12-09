# Docker PHP 7.1 setup

A docker container for Apache and 7.1, setup with composer ready for Symfony.

## How to use

```sh
docker-compose up --build -d

docker ps -a
docker exec -it test-api bash

docker-compose stop
docker-compose rm -f
```
