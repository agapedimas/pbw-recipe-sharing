CREATE TABLE IF NOT EXISTS recipe (
    id SERIAL PRIMARY KEY,
    account_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    picture BYTEA,
    description VARCHAR(100),
    instructions TEXT NOT NULL,

    CONSTRAINT fk_recipe_account
        FOREIGN KEY (account_id)
        REFERENCES account(id)
        ON DELETE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_recipe_account_id
    ON recipe(account_id);

CREATE INDEX IF NOT EXISTS idx_recipe_title
    ON recipe(title);