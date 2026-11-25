CREATE TABLE IF NOT EXISTS account (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    phone VARCHAR(32) NOT NULL,
    bio TEXT,
    picture BYTEA,
    role VARCHAR(5) NOT NULL CHECK (role IN ('user', 'admin'))
);

CREATE INDEX IF NOT EXISTS idx_account_name
    ON account(name);

CREATE INDEX IF NOT EXISTS idx_account_email
    ON account(email);

CREATE INDEX IF NOT EXISTS idx_account_role
    ON account(role);