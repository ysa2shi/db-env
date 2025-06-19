DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id BIGSERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    date_of_birth DATE DEFAULT NULL,
    gender VARCHAR(32) DEFAULT 'prefer_not_to_say' CHECK (gender IN ('male', 'female', 'other', 'prefer_not_to_say')),
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    last_login_at TIMESTAMP DEFAULT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- テーブルコメント
COMMENT ON TABLE users IS 'ユーザー情報を格納するテーブル';

-- カラムコメント（省略せずに全部指定する例）
COMMENT ON COLUMN users.id IS 'ユーザーID（自動採番）';
COMMENT ON COLUMN users.username IS 'ユーザー名（ユニーク）';
COMMENT ON COLUMN users.email IS 'メールアドレス（ユニーク）';
COMMENT ON COLUMN users.password_hash IS 'ハッシュ化されたパスワード';
COMMENT ON COLUMN users.date_of_birth IS '生年月日';
COMMENT ON COLUMN users.gender IS '性別';
COMMENT ON COLUMN users.is_active IS 'アカウント有効状態（TRUE: 有効）';
COMMENT ON COLUMN users.last_login_at IS '最終ログイン日時';
COMMENT ON COLUMN users.created_at IS '作成日時';
COMMENT ON COLUMN users.updated_at IS '更新日時';
