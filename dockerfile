# 使用 Python 官方镜像作为基础镜像
FROM python:3.8-slim

# 设置工作目录
WORKDIR /opt/stable-diffusion-webui

# 安装操作系统依赖项
RUN apt-get update && apt-get install -y \
    wget \
    git \
    libgl1 \
    libglib2.0-0

# 克隆 stable-diffusion-webui 仓库
RUN git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git .

# 复制 requirements.txt 文件到工作目录
COPY requirements.txt .

# 安装 Python 依赖项
RUN pip install --no-cache-dir -r requirements.txt

# 容器启动后执行的命令
CMD ["python", "launch.py"]
