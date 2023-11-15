# Saga demo

## Rre-requirements

1. Set up SSH keys and configure Github acc.
Check out Github guide how to <a href='https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh'>generate SSH keys</a>

2. Clone all repositories.
Run bash script in the current directory (ms-saga-demo).
    ```bash
    $ sh start.sh
    ```

3. Clone `.env.sample` -> `.env` in each project.

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

## Run backend service with debugger and watch mode.

Node process listens for a debugging client at default port 9229.
By default Nest App runs in watch and debug mode and.

