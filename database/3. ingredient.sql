CREATE TABLE IF NOT EXISTS ingredient (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    description TEXT
);

CREATE INDEX IF NOT EXISTS idx_ingredient_name
    ON ingredient(name);