# vuetorrent-standalone

vuetorrent独立部署版

Docker镜像:[DockerHub:nukewarrior/vuetorrent-standalone](https://github.com/nukewarrior/vuetorrent-standalone)  
VueTorrent项目地址:[GitHub:VueTorrent/VueTorrent](https://github.com/VueTorrent/VueTorrent)

```bash
docker run -itd \
-p 8888:80 \
--name vqb \
-e QB_HOST=http://192.168.2.34 \
-e QB_PORT=8080 \
nukecat/vuetorrent-standalone:latest
```

1. 修改vqb为你自己中意的容器名称
2. 修改8888为你自己中意的端口号，这个端口号是用来访问vuetorrent的
3. 修改QB_HOST为你的qbittorrent容器访问IP或域名，比如https://my.domain.com ， 不要忘了http:// 或者 https://
4. 修改QB_PORT为你的qbittorrent容器访问端口


---


A standalone version of VueTorrent. 

Docker Image:[DockerHub:nukewarrior/vuetorrent-standalone](https://github.com/nukewarrior/vuetorrent-standalone)  
For more infomation about VueTorrent, see [GitHub:VueTorrent/VueTorrent](https://github.com/VueTorrent/VueTorrent)

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
