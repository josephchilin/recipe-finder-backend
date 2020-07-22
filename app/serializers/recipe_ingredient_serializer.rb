class RecipeIngredientSerializer < ActiveModel::Serializer
  attributes :ingredient_id, :quantity, :measurement_type, :recipe_id

end

# t.integer "recipe_id"
# t.integer "ingredient_id"
# t.float "quantity"
# t.string "measurement_type"