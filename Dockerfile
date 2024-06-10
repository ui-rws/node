# 使用官方 Node.js 镜像作为基础镜像
FROM node:lts-alpine3.18

# 设置工作目录
WORKDIR /app

# 将应用程序文件复制到容器中
COPY . .

# EXPOSE 3000

# 安装应用程序的依赖
RUN apt-get update && \
    apt-get install -y curl gawk sed && \
    chmod +x index.js && \
    npm install

# 定义容器启动时执行的命令为 node index.js
CMD ["node", "index.js"]
