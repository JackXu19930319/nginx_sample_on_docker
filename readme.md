# 在同一台機器上部署不同網站

1. 先建立後端app(all_on_server_backend)
2. 將所有app加入到同一個network
3. 然後設定好nginx.conf
4. 啟動docker compose
```
docker network create work_net
docker network connect work_net jack_test_app
```
