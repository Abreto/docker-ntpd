# docker-ntpd
Openntpd in Alpine.

## Usage

```
docker run --cap-add=SYS_TIME --cap-add=SYS_NICE --restart=always -d abreto/ntpd
```

Or in `docker-compose.yml`
```
ntpd:
  image: abreto/ntpd
  cap_add:
    - SYS_TIME
    - SYS_NICE
  restart: always
```
