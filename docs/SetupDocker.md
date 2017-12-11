# Setup with Docker
It's easy to make an environment with docker.

## Setup
### Prepare Dockerfile

Here is a sample [Dockerfile](../Dockerfile).

### Prepare docker-compose.yml

Here is a sample [docker-compose.yml](../docker-compose.yml)

### Run containers

There are two containers `web` and `db` defined in the sample docker-comopose.
You can run the containers with:

```
docker-compose up -d # -d is a daemon option
```

Now you can use the container's command.

```
docker-compose run web mix phoenix.new  hi_phoenix
```

Make sure you need to fix config/dev.exs database hostname to `db`. (Default `localhost`)

```
docker-compose run web mix ecto.create
```
