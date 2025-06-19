# Database Environment Setup

このプロジェクトは、MySQLとPostgreSQLのデータベース環境を簡単にセットアップするためのDocker構成を提供します。

## 構成

- **docker-compose.yml**: Docker Composeファイル。
- **mysql/**: MySQL用の設定と初期化スクリプト。
  - `Dockerfile`: MySQLのDockerイメージを構築するためのファイル。
  - `init.sql`: 初期化用SQLスクリプト。
  - `my.cnf`: MySQLの設定ファイル。
- **postgres/**: PostgreSQL用の初期化スクリプト。
  - `init.sql`: 初期化用SQLスクリプト。

## セットアップ手順

1. DockerとDocker Composeをインストールしてください。
   - [Dockerのインストールガイド](https://docs.docker.com/get-docker/)
   - [Docker Composeのインストールガイド](https://docs.docker.com/compose/install/)

2. このリポジトリをクローンします。

   ```bash
   git clone https://github.com/ysa2shi/db-env.git
   cd db-env
   ```

3. 必要に応じて、`mysql/init.sql`や`postgres/init.sql`を編集して初期データを設定します。
4. `docker-compose.sh`で環境起動します。

## 接続方法

🐬 MySQL（MySQL 8.0）

```bash
docker exec -it mysql mysql --default-character-set=utf8mb4 -uroot -prootpass testdb
```

🐘 PostgreSQL（PostgreSQL 16）

```bash
docker exec -it postgres psql -U postgres -d testdb
```
