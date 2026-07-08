FROM nginx:1.25-alpine

# Sao chép thư mục build sẵn vào thư mục gốc của Nginx
COPY build/ /usr/share/nginx/html

# Thay thế file cấu hình mặc định để hỗ trợ React Router (tránh lỗi 404 khi reload)
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
