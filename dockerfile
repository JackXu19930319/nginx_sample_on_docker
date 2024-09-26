FROM python:3.11-alpine

WORKDIR /app

# 安裝必要的依賴包
RUN apk add --no-cache gcc musl-dev linux-headers

# 複製應用程式代碼
COPY . /app

# 安裝 Python 依賴
RUN pip install --no-cache-dir -r requirements.txt

# 暴露應用程式端口
EXPOSE 8002

# 執行 Flask 應用
CMD ["python", "app.py"]
