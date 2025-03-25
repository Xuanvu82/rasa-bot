#!/bin/sh
echo "Starting Rasa on port ${PORT:-5005}"
# Lưu ý: Phiên bản mới của Rasa có thể tự lắng nghe trên 0.0.0.0 theo mặc định,
# vì vậy ta chỉ cần chỉ định cổng từ biến môi trường PORT (Cloud Run sẽ set biến này).
exec rasa run --enable-api --port ${PORT:-5005} --cors '*'
