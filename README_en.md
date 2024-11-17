# vuetorrent-standalone

[中文](README.md)

A standalone version of VueTorrent.Use nginx as a web server so you can use vuetorrent and qbittorrent's default webui same time.****

Docker Image:[DockerHub:nukewarrior/vuetorrent-standalone](https://github.com/nukewarrior/vuetorrent-standalone)  
For more infomation about VueTorrent, see [GitHub:VueTorrent/VueTorrent](https://github.com/VueTorrent/VueTorrent)

## Use image I build

```
docker run -itd \
-p 8888:80 \
--name vqb \
-e QB_HOST=http://192.168.2.34 \
-e QB_PORT=8080 \
nukecat/vuetorrent-standalone:latest
```

1. Rename `vqb` to your preferred container name.
2. Modify `8888` to your preferred port number, which is used to access vuetorrent.
3. Set `QB_HOST` to the IP address or domain name of your qbittorrent container, for example, `https://my.domain.com`; don't forget to include `http://` or `https://`.
4. Set `QB_PORT` to the port number used to access your qbittorrent container.

## Build image yourself

1. download latest release zip file from  <https://github.com/VueTorrent/VueTorrent/releases>
2. unzip it
3. build your images

    ```bash
    docker build -t image_name:images_tag .
    ```

4. run your image with `QB_HOST` and `QB_PORT` environment variables
