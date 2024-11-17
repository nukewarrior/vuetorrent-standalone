# vuetorrent独立部署版

[English](README_en.md)

vuetorrent独立部署版使用nginx容器作为反向代理，可以在不替换原因qbittorrent webui的情况下，独立使用vuetorrent。

Docker镜像:[DockerHub:nukewarrior/vuetorrent-standalone](https://github.com/nukewarrior/vuetorrent-standalone)  
VueTorrent项目地址:[GitHub:VueTorrent/VueTorrent](https://github.com/VueTorrent/VueTorrent)

## 使用我构建的镜像

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
3. 修改QB_HOST为你的qbittorrent容器访问IP或域名，比如<https://my.domain.com> ， 不要忘了http:// 或者 https://
4. 修改QB_PORT为你的qbittorrent容器访问端口

## 自行构建

1. 从 <https://github.com/VueTorrent/VueTorrent/releases> 下载最新的vuetorrent压缩包
2. 解压zip包
3. 构建镜像

    ```bash
    docker build -t 你的镜像名:你的镜像tag .
    ```

4. 运行镜像并添加`QB_HOST`及`QB_PORT`环境变量
