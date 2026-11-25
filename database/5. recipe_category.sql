CREATE TABLE IF NOT EXISTS recipe_category (
    recipe_id INT NOT NULL,
    category_id INT NOT NULL,

    PRIMARY KEY (recipe_id, category_id),

    CONSTRAINT fk_recipe_category_recipe
        FOREIGN KEY (recipe_id)
        REFERENCES recipe(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_recipe_category_category
        FOREIGN KEY (category_id)
        REFERENCES category(id)
        ON DELETE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_recipe_category_category_id
    ON recipe_category(category_id);