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
    "baking soda",
    "buttermilk",
    "kosher salt",
    "vanilla bean",
    "egg whites",
    "Pecorino Romano",
    "Parmigiano-Reggiano",
    "black pepper",
    "spaghetti",
    "olive oil"
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
puts "destroying recipe ingredients..."
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

waffle_2 = Recipe.create(
    cuisine_id: Cuisine.find_by(name: "American").id, 
    name: "Buttermilk Vanilla Waffles", 
    yield: 3,
    rating: 4,
    user_id: User.all.sample.id,
    time: 20,
    image_url: "https://cf-images.us-east-1.prod.boltdns.net/v1/static/4841592010001/7236901c-eca9-4ae5-91c7-4bc6ed2f15a4/419d7eb9-1751-4da0-987b-d0f2236caac3/1280x720/match/image.jpg",
    instruction: "1. For the Batter: In a large bowl, combine flour, powdered sugar, salt, baking soda, baking powder, and the scrapings of one large vanilla bean, mixing by hand until the seeds are well dispersed. Add buttermilk, melted butter, egg whites, and vanilla extract and whisk until smooth.
    2. For the Waffles: Set waffle iron to medium and preheat until the indicator is ready. For an 8-inch square machine, scrape in roughly half the batter. For a 7-inch Belgian machine, scrape in about one-third. Close lid and cook until waffle is golden brown but still steaming, 4 1/2 to 6 minutes depending on the depth and heat of your machine. Serve immediately, with copious amounts of maple syrup, and griddle remaining batter as before."
)

pasta_1 = Recipe.create(
    cuisine_id: Cuisine.find_by(name: "Italian").id, 
    name: "Cacio e Pepe", 
    yield: 4,
    rating: 5,
    user_id: User.all.sample.id,
    time: 20,
    image_url: "https://static01.nyt.com/images/2019/06/30/dining/23recipe/COOKING-CACIO-E-PEPE1-articleLarge-v2.jpg",
    instruction: "1. Put a pot of salted water on to boil. In a large bowl, combine the cheeses and black pepper; mash with just enough cold water to make a thick paste. Spread the paste evenly in the bowl.
    2. Once the water is boiling, add the pasta. The second before it is perfectly cooked (taste it frequently once it begins to soften), use tongs to quickly transfer it to the bowl, reserving a cup or so of the cooking water. Stir vigorously to coat the pasta, adding a teaspoon or two of olive oil and a bit of the pasta cooking water to thin the sauce if necessary. The sauce should cling to the pasta and be creamy but not watery.
    3. Plate and dust each dish with additional pecorino and pepper. Serve immediately."
)

puts "seeding recipe_ingredients..."

#==== WAFFLE 1 INGREDIENTS SEED
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

#===== WAFFLE 2 INGREDIENTS SEED
waffle_2_ing_1 = RecipeIngredient.create(
    recipe_id: waffle_2.id,
    ingredient_id: Ingredient.find_by(name: "all-purpose flour").id,
    quantity: 6.5,
    measurement_type: "cups"
)

waffle_2_ing_2 = RecipeIngredient.create(
    recipe_id: waffle_2.id,
    ingredient_id: Ingredient.find_by(name: "sugar").id,
    quantity: 1.5,
    measurement_type: "ounces"
)

waffle_2_ing_3 = RecipeIngredient.create(
    recipe_id: waffle_2.id,
    ingredient_id: Ingredient.find_by(name: "kosher salt").id,
    quantity: 0.5,
    measurement_type: "teaspoon"
)

waffle_2_ing_4 = RecipeIngredient.create(
    recipe_id: waffle_2.id,
    ingredient_id: Ingredient.find_by(name: "baking soda").id,
    quantity: 0.5,
    measurement_type: "teaspoon"
)

waffle_2_ing_5 = RecipeIngredient.create(
    recipe_id: waffle_2.id,
    ingredient_id: Ingredient.find_by(name: "baking powder").id,
    quantity: 0.5,
    measurement_type: "teaspoon"
)

waffle_2_ing_6 = RecipeIngredient.create(
    recipe_id: waffle_2.id,
    ingredient_id: Ingredient.find_by(name: "vanilla bean").id,
    quantity: 1,
    measurement_type: ""
)

waffle_2_ing_7 = RecipeIngredient.create(
    recipe_id: waffle_2.id,
    ingredient_id: Ingredient.find_by(name: "buttermilk").id,
    quantity: 14,
    measurement_type: "ounces"
)

waffle_2_ing_8 = RecipeIngredient.create(
    recipe_id: waffle_2.id,
    ingredient_id: Ingredient.find_by(name: "unsalted butter").id,
    quantity: 1.5,
    measurement_type: "ounces"
)

waffle_2_ing_9 = RecipeIngredient.create(
    recipe_id: waffle_2.id,
    ingredient_id: Ingredient.find_by(name: "egg whites").id,
    quantity: 2,
    measurement_type: ""
)

waffle_2_ing_10 = RecipeIngredient.create(
    recipe_id: waffle_2.id,
    ingredient_id: Ingredient.find_by(name: "vanilla extract").id,
    quantity: 1,
    measurement_type: "teaspoon"
)

#===== PASTA 1 INGREDIENTS SEED
pasta_1_ing_1 = RecipeIngredient.create(
    recipe_id: pasta_1.id,
    ingredient_id: Ingredient.find_by(name: "kosher salt").id,
    # quantity: ,
    # measurement_type: ""
)

pasta_1_ing_1 = RecipeIngredient.create(
    recipe_id: pasta_1.id,
    ingredient_id: Ingredient.find_by(name: "Pecorino Romano").id,
    quantity: 1.5,
    measurement_type: "cups"
)

pasta_1_ing_1 = RecipeIngredient.create(
    recipe_id: pasta_1.id,
    ingredient_id: Ingredient.find_by(name: "Parmigiano-Reggiano").id,
    quantity: 1,
    measurement_type: "cup"
)

pasta_1_ing_1 = RecipeIngredient.create(
    recipe_id: pasta_1.id,
    ingredient_id: Ingredient.find_by(name: "black pepper").id,
    quantity: 1,
    measurement_type: "tablespoon"
)

pasta_1_ing_1 = RecipeIngredient.create(
    recipe_id: pasta_1.id,
    ingredient_id: Ingredient.find_by(name: "spaghetti").id,
    quantity: 0.75,
    measurement_type: "pound"
)

pasta_1_ing_1 = RecipeIngredient.create(
    recipe_id: pasta_1.id,
    ingredient_id: Ingredient.find_by(name: "olive oil").id,
    # quantity: null,
    # measurement_type: ""
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