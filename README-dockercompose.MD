# 安装和运行 stable-diffusion-webui 使用 Docker

这是关于如何在 Docker 容器中安装和运行 `stable-diffusion-webui` 的指南。

## 准备工作

1. **本地构建镜像**:
   - 在本地计算机上，创建一个新的目录用于存放 Docker 配置和相关文件，例如 `D:\program\stable_diffusion_webui\`。
   - 在该目录下创建一个 `docker-compose.yml` 文件，用于构建镜像（详见下方内容）。
   - 确保 `stable-diffusion-webui` 项目的 `requirements.txt` 文件和其他必要的配置文件位于同一目录下。

2. **VPS 部署**:
   - 在 VPS 上，创建一个新的目录用于存放 Docker 配置，例如 `/opt/stable-diffusion-webui/`。
   - 在该目录下创建一个 `docker-compose.yml` 文件，用于从 Docker Hub 拉取并运行镜像（详见下方内容）。

## 本地构建 Docker 镜像

- 在本地的 `D:\program\stable_diffusion_webui\` 目录下，使用以下 `docker-compose.yml` 文件内容：

  ```yaml
  version: '3.8'
  services:
    stable-diffusion-webui:
      build: .
      ports:
        - "7860:7860"
      volumes:
        - ./data:/opt/stable-diffusion-webui/data
      restart: unless-stopped
