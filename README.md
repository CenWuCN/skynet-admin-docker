# skynet-admin-docker
Packing skynet-admin docker script.

运行 build-admin-server.sh 和 build-admin-web.sh 然后再构建 skynet-admin 镜像

需要你的计算机上安装 node v16.16.0, yarn, 以及编译 skynet 所必要的工具。

体验已经打包好的 docker 镜像，执行以下命令

```bash
docker pull zhongzhe/skynet-admin:v1
docker run -p 80:80 -p 8001:8001 -d skynet-admin:v1
```

然后在 docker 运行的主机上用浏览器访问 http://127.0.0.1 即可。