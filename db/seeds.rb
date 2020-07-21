# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cuisines = [
    "American",
    "Italian",
    "Japanese",
    "Chinese"
]

ingredients = [
    "unsalted butter",
    "all-purpose flour",
    "sugar",
    "baking powder",
    "sea salt",
    "milk",
    "yogurt",
    "eggs",
    "vegetable oil",
    "vanilla extract",
    "baking soda"
]

users = [
    "Jallen",
    "Meghann",
    "Caryn",
    "Eric"
]

# DESTROY SEEDS
puts "destroying cuisines..."
Cuisine.destroy_all
puts "destroying ingredients..."
Ingredient.destroy_all
puts "destroying users..."
User.destroy_all
puts "destroying recipes..."
Recipe.destroy_all
puts "destrogin recipe ingredients..."
RecipeIngredient.destroy_all

# SEEDS
puts "seeding cuisines..."
cuisines.each do |cuisine| 
    Cuisine.create(name: cuisine)
end

puts "seeding ingredients..."
ingredients.each do |ingredient| 
    Ingredient.create(name: ingredient)
end

puts "seeding users..."
users.each do |user| 
    User.create(name: user)
end

puts "seeding recipes..."
waffle_1 = Recipe.create(
    cuisine_id: Cuisine.find_by(name: "American").id, 
    name: "Plain Waffles", 
    yield: 10,
    rating: 5,
    user_id: User.all.sample.id,
    time: 35,
    image_url: "https://static01.nyt.com/images/2015/05/20/dining/20HIT_WKDWAFFLE/20HIT_WKDWAFFLE-mediumThreeByTwo252.jpg",
    instruction: "1. Melt butter either on the stove or in the microwave. Set aside.
    2. In a large bowl, whisk together flour, sugar, baking powder, salt, and baking soda. In a separate bowl, whisk together yogurt, milk, melted butter, and eggs. Fold wet ingredients into dry ingredients.
    3. Preheat a waffle iron and, using a pastry brush or paper towel, lightly coat with butter. Cook waffles (using about 1/2 cup batter per waffle) until golden and crisp. Butter the iron in between batches as needed. Serve waffles immediately as they are ready, or keep them warm in a 200 degree oven until ready to serve."
)

puts "seeding recipe_ingredients..."
# puts waffle_1.id

waffle_1_ing_1 = RecipeIngredient.create(
    recipe_id: waffle_1.id,
    ingredient_id: Ingredient.find_by(name: "unsalted butter").id,
    quantity: 6,
    measurement_type: "tablespoons"
)

waffle_1_ing_2 = RecipeIngredient.create(
    recipe_id: waffle_1.id,
    ingredient_id: Ingredient.find_by(name: "all-purpose flour").id,
    quantity: 2,
    measurement_type: "cups"
)
waffle_1_ing_3 = RecipeIngredient.create(
    recipe_id: waffle_1.id,
    ingredient_id: Ingredient.find_by(name: "sugar").id,
    quantity: 1,
    measurement_type: "tablespoon"
)

waffle_1_ing_4 = RecipeIngredient.create(
    recipe_id: waffle_1.id,
    ingredient_id: Ingredient.find_by(name: "baking powder").id,
    quantity: 1,
    measurement_type: "teaspoon"
)
waffle_1_ing_5 = RecipeIngredient.create(
    recipe_id: waffle_1.id,
    ingredient_id: Ingredient.find_by(name: "sea salt").id,
    quantity: 1,
    measurement_type: "teaspoon"
)

waffle_1_ing_6 = RecipeIngredient.create(
    recipe_id: waffle_1.id,
    ingredient_id: Ingredient.find_by(name: "baking soda").id,
    quantity: 0.5,
    measurement_type: "teaspoon"
)

waffle_1_ing_7 = RecipeIngredient.create(
    recipe_id: waffle_1.id,
    ingredient_id: Ingredient.find_by(name: "yogurt").id,
    quantity: 1,
    measurement_type: "cup"
)

waffle_1_ing_8 = RecipeIngredient.create(
    recipe_id: waffle_1.id,
    ingredient_id: Ingredient.find_by(name: "milk").id,
    quantity: 1,
    measurement_type: "cup"
)

waffle_1_ing_9 = RecipeIngredient.create(
    recipe_id: waffle_1.id,
    ingredient_id: Ingredient.find_by(name: "eggs").id,
    quantity: 4,
    measurement_type: ""
)

# t.integer "recipe_id"
# t.integer "ingredient_id"
# t.float "quantity"
# t.string "measurement_type"


# t.integer "cuisine_id"
# t.string "name"
# t.string "image_url"
# t.string "instruction"
# t.integer "yield"
# t.integer "rating"
# t.integer "user_id"
# t.integer "time"