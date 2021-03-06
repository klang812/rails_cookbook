class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :ingredient_name

      t.timestamps
    end

    create_table :ingredients_recipes, id: false do |t|
      t.belongs_to :ingredient, index: true
      t.belongs_to :recipe, index: true
    end
  end
end
