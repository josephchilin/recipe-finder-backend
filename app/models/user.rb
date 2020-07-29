class User < ApplicationRecord
    has_many :recipes
    has_many :recipe_ingredients, through: :recipes
    validates :name, uniqueness: true
end
