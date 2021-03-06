class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :instruction, :serving_size, :rating, :time
  belongs_to :cuisine
  belongs_to :user
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
end
