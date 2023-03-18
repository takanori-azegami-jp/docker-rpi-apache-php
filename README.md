# docker-rpi-apache-php
RaspberryPi(64bit)にDockerでApache+PHP環境を構築

## 環境
- kernel：Linux ホスト名 5.15.32-v8+ #1538 SMP PREEMPT Thu Mar 31 19:40:39 BST 2022 aarch64 GNU/Linux
- OS：Debian GNU/Linux 11 (bullseye)

## コンテナ起動
docker-compose.ymlを配置したフォルダに移動して実行
~~~
$ docker-compose up -d --build
~~~

## ブラウザからURLでDokuWikiに接続
~~~
http:// [DockerホストのIPアドレス] 
~~~

## 参考
- [dockerでApache+phpのイメージ作成02](https://www.logw.jp/cloudserver/10258.html)
