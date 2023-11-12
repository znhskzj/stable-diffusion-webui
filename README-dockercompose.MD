# 安装和运行 stable-diffusion-webui 使用 Docker

这是关于如何在 Docker 容器中安装和运行 `stable-diffusion-webui` 的指南。

## 准备工作

1. **创建 Dockerfile**:
   - 在 VPS 上，创建一个新的目录用于存放 Dockerfile 和相关文件，例如 `/opt/stable-diffusion-webui/`。
   - 在该目录下创建一个名为 `Dockerfile_stable_diffusion_webui` 的文件，并粘贴 Dockerfile 内容。

2. **创建 docker-compose.yml 文件**:
   - 在同一目录（`/opt/stable-diffusion-webui/`）中创建 `docker-compose.yml` 文件，并粘贴 docker-compose 配置。

3. **准备应用配置和依赖**:
   - 确保 `stable-diffusion-webui` 项目的 `requirements.txt` 文件和其他必要的配置文件位于同一目录下。
   - 如果还没有 `requirements.txt` 文件，请从原始项目仓库复制到 `/opt/stable-diffusion-webui/` 目录下。

## 安装和运行

1. **构建 Docker 镜像**:
   - 在 `/opt/stable-diffusion-webui/` 目录下，打开终端并执行以下命令来构建 Docker 镜像：
     ```bash
     docker-compose build
     ```

2. **运行 Docker 容器**:
   - 使用以下命令启动容器：
     ```bash
     docker-compose up -d
     ```
   - `-d` 参数表示在后台运行容器。

3. **访问应用**:
   - 一旦容器启动，通过浏览器访问 `http://[您的VPS的IP地址]:7860` 即可使用 `stable-diffusion-webui` 应用。

## 注意事项

- 确保您的 VPS 满足 `stable-diffusion-webui` 所需的硬件和软件要求。
- 根据需要修改 docker-compose 文件中的端口设置。
