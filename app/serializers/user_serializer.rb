class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :recipes
  # has_many :recipe_ingredients
end
