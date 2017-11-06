# Matecat Docker

Dockerization for [https://github.com/matecat/MateCat](https://github.com/matecat/MateCat)

# Prerequisites

* Docker
* Docker Compose

# Configuration

1. Clone this Docker repo

```sh
git clone https://github.com/duyetdev/matecat-docker.git
```

2. Clone **Matecat** source 

```sh
git clone https://github.com/matecat/MateCat.git ~/matecat
```

3. Update **Mounted volumes** (mount folder `matecat` in your local machine to `/var/www/matecat` of Docker). Modify `docker-compose.yml`:

```
  volumes:
    - ~/matecat:/var/www/matecat:rw
```

# Start Docker

```sh
docker-compose up
```