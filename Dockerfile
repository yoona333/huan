# 使用 Node.js 官方镜像作为基础镜像
FROM node:18

# 设置工作目录
WORKDIR /app

# 安装 git
RUN apt-get update && apt-get install -y git

# 克隆指定的 Git 仓库
RUN git clone https://github.com/yoona333/huan.git /app

# 进入工作目录
WORKDIR /app

# 安装依赖
RUN npm install

# 暴露端口
EXPOSE 3000

CMD ["node", "src/index.js"]

