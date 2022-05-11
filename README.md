# AriaNg

[mayswind/AriaNg](https://github.com/mayswind/AriaNg) with automatic token

```sh
docker run \
    --name ariang \
    -e "ARIA2_TOKEN=your-token" \
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=Europe/London \
    -p 80:80 \
    --restart unless-stopped \
    ghcr.io/aiosk/ariang
```