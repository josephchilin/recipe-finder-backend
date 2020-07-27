class RecipeIngredientSerializer < ActiveModel::Serializer
  attributes :ingredient, :quantity, :measurement_type, :recipe_id, :id

end

# t.integer "recipe_id"
# t.integer "ingredient_id"
# t.float "quantity"
# t.string "measurement_type"