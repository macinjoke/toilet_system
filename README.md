# toilet_system
データベース特別演習の課題用に作ったトイレシステムである。
Docker を用い、すぐにシステムを実行させることができる。

# PREREQUISITE

- Docker

# SETUP

コンテナ上にAPIサーバーとMySQLを立ち上げる
`docker-compose up`

MySQLにダミーデータをINSERTする
`docker-compose exec mysql mysql -u root -D mydb --password=root -e"$(cat db/sql/insert_dummy.sql)"`

# USE

以下のURLにアクセスすると x=100, y=200 の位置情報のとき、トイレを近い順に並べて表示される。
http://localhost/?x=100&y=200


