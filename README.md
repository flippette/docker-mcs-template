# Container building instructions

## 1. Preparation

- Insert your configuration overrides into the `overrides` directory.
- Decide on an image name (`john_doe/mcs:latest` will be used in this example).
- Edit `docker-compose.yml` as follows:
  - Change `services.mcs.image` to `john_doe/mcs:latest`.
  - If you want to use RCON:
    - Uncomment `services.mcs.environment.RCON_PASSWORD` and change it to something else.
    - Uncomment the second line in `services.mcs.ports`.

## 2. Building

### With Docker

```
  docker build -t john_doe/mcs:latest .
```

### With Podman

```
  podman build -t john_doe/mcs:latest --format docker .
```

## 3. Testing

### With Docker

```
  docker compose up
```

### With Podman

```
  podman-compose up
```

## 4. Publishing

### With Docker

```
  docker push john_doe/mcs:latest
```

### With Podman

```
  podman push john_doe/mcs:latest
```

## 3. Notes

- You may have to run the container twice due to `/start` potentially overwriting the config files. (untested)