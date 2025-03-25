# syntax=docker/dockerfile:1.2
FROM rasa/rasa:latest

WORKDIR /app

# Copy toàn bộ dự án (bao gồm cả file cấu hình, data, thư mục models nếu đã train)
COPY . /app

# Copy file entrypoint.sh và cấp quyền thực thi (đảm bảo file này có định dạng Unix LF)
COPY --chmod=0755 entrypoint.sh /app/entrypoint.sh

# Override ENTRYPOINT của image gốc (để loại bỏ lệnh mặc định của Rasa)
ENTRYPOINT []

# CMD sẽ chạy file entrypoint.sh
CMD ["sh", "-c", "/app/entrypoint.sh"]
