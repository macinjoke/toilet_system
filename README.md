# toilet_system
データベース特別演習の課題用に作ったトイレシステムである。
Docker を用い、すぐにシステムを実行させることができる。

# PREREQUISITE

- Docker

# SETUP

このリポジトリをクローンする。

```
git clone https://github.com/macinjoke/toilet_system.git
cd toilet_system
```

コンテナ上にAPIサーバーとMySQLを立ち上げる
```shell
$ docker-compose up
```

MySQLにダミーデータをINSERTする
```shell
$ docker-compose exec mysql mysql -u root -D mydb --password=root -e"$(cat db/sql/insert_dummy.sql)"
```

# USE

以下のURLにアクセスすると x=100, y=200 の位置情報のとき、トイレを近い順に並べて表示される。

http://localhost/?x=100&y=200


