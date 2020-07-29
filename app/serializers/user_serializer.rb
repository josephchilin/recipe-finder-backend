class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :recipes, :recipe_ingredients
  # has_many :recipes
  has_many :recipe_ingredients, through: :recipes
end
