# 使用 Docker Hub 镜像安装和运行 stable-diffusion-webui

这是一份指南，介绍如何在 Docker 容器中使用 Docker Hub 上的镜像安装和运行 `stable-diffusion-webui`。

## 准备工作

1. **准备 docker-compose.yml 文件**:
   - 在 VPS 上，创建一个新的目录用于存放 `docker-compose.yml` 文件，例如 `/opt/stable-diffusion-webui/`。
   - 在该目录下创建 `docker-compose.yml` 文件。

## 安装和运行

1. **拉取并运行 Docker 镜像**:
   - 在 `/opt/stable-diffusion-webui/` 目录下，打开终端并执行以下命令来拉取并运行 Docker 镜像：
     ```bash
     docker-compose up -d
     ```
   - `-d` 参数表示在后台运行容器。

2. **访问应用**:
   - 一旦容器启动，通过浏览器访问 `http://[您的VPS的IP地址]:7860` 即可使用 `stable-diffusion-webui` 应用。

## 注意事项

- 确保您的 VPS 满足 `stable-diffusion-webui` 所需的硬件和软件要求。
- 根据需要修改 docker-compose 文件中的端口设置。

## docker-compose.yml 示例

以下是 `docker-compose.yml` 文件的一个示例：

```yaml
version: '3.8'
services:
  stable-diffusion-webui:
    image: wuxiami/myvps-stable-diffusion-webui:latest
    ports:
      - "7860:7860"
    volumes:
      - ./data:/opt/stable-diffusion-webui/data
    restart: unless-stopped
