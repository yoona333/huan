# 使用 Node.js 官方镜像作为基础镜像
FROM node:18

# 设置工作目录
WORKDIR /app

# 安装 Git
RUN apt-get update && apt-get install -y git

# 将应用程序代码复制到镜像中
COPY . .

# 安装依赖
RUN npm install

# 暴露服务端口（如果有）
EXPOSE 3000

# 启动服务
CMD ["npm", "start"]
