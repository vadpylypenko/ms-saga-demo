# Saga demo

## Rre-requirements

1. Set up SSH keys and configure Github acc.
Check out Github guide how to <a href='https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh'>generate SSH keys</a>

2. Node.js v18

3. Clone repositories.
Run bash script in the current directory (ms-saga-demo).
    ```bash
    $ sh start.sh
    ```


## Run all services
Use docker compose to run all services.

```bash
# docker-compose.yml
$ docker-compose up
```

The application available on the address:

http://localhost:9010/

OpenAPI (Swagger UI) available on the address:
http://localhost:9010/api

RabbitMQ (UI) available on the address:
http://localhost:9011/

Username: user

Password: pass

By default Nest App runs in watch and debug mode and.

