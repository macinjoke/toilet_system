# toilet_system
データベース特別演習の課題用に作ったトイレシステムである。
Docker を用い、手元ですぐにシステムを実行させることができる。

# PREREQUISITE

- Docker

# SETUP

`docker-compose `

`docker-compose exec mysql mysql -u root -D mydb --password=root -e"$(cat db/sql/insert_dummy.sql)"`


