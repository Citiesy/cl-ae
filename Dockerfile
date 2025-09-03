# 使用官方的 Nginx 镜像作为基础
FROM nginx:alpine

# 删除默认的 Nginx 配置
RUN rm /etc/nginx/conf.d/default.conf

# 将我们自己的 nginx.conf 复制到容器里
COPY nginx.conf /etc/nginx/conf.d/

# 将我们的网站文件 (index.html) 复制到 Nginx 的网站根目录
COPY index.html /usr/share/nginx/html/
