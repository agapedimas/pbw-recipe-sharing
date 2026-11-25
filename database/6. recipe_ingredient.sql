CREATE TABLE IF NOT EXISTS recipe_ingredient (
    recipe_id INT NOT NULL,
    ingredient_id INT NOT NULL,
    quantity NUMERIC(10, 2),
    unit VARCHAR(50),
    notes VARCHAR(255),

    PRIMARY KEY (recipe_id, ingredient_id),

    CONSTRAINT fk_recipe_ingredient_recipe
        FOREIGN KEY (recipe_id)
        REFERENCES recipe(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_recipe_ingredient_ingredient
        FOREIGN KEY (ingredient_id)
        REFERENCES ingredient(id)
        ON DELETE CASCADE,

    CONSTRAINT chk_recipe_ingredient_quantity
        CHECK (quantity IS NULL OR quantity > 0)
);

CREATE INDEX IF NOT EXISTS idx_recipe_ingredient_ingredient_id
    ON recipe_ingredient(ingredient_id);