-- 既存のテーブルを削除
DROP TABLE IF EXISTS users;

-- users テーブルを作成（テーブルとカラムにコメント付き）
CREATE TABLE users (
    id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT 'ユーザーID（自動採番）',
    username VARCHAR(50) NOT NULL UNIQUE COMMENT 'ユーザー名（ユニーク）',
    email VARCHAR(255) NOT NULL UNIQUE COMMENT 'メールアドレス（ユニーク）',
    password_hash VARCHAR(255) NOT NULL COMMENT 'ハッシュ化されたパスワード',
    date_of_birth DATE DEFAULT NULL COMMENT '生年月日',
    gender ENUM('male', 'female', 'other', 'prefer_not_to_say') DEFAULT 'prefer_not_to_say' COMMENT '性別',
    is_active TINYINT(1) NOT NULL DEFAULT 1 COMMENT 'アカウント有効状態（1: 有効, 0: 無効）',
    last_login_at DATETIME DEFAULT NULL COMMENT '最終ログイン日時',
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時'
) COMMENT = 'ユーザー情報を格納するテーブル';
