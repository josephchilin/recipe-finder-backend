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
    "olive oil",
    "chicken", 
    "water",
    "white miso",
    "honey",
    "rice vinegar",
    "chicken thighs",
    "cinnamon",
    "lime juice",
    "garlic",
    "panko bread crumbs",
    "tomato sauce",
    "mozzarella",
    "granulated sugar",
    "brown sugar",
    "ginger",
    "pineapple juice",
    "cornstarch",
    "chicken breast",
    "tomatoes",
    "basil leaves",
    "soy sauce",
    "bacon",
    "cheddar cheese",
    "scallions"
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
    serving_size: 10,
    rating: 5,
    user_id: User.find_by(name: "Jallen").id,
    time: 35,
    image_url: "https://static01.nyt.com/images/2015/05/20/dining/20HIT_WKDWAFFLE/20HIT_WKDWAFFLE-mediumThreeByTwo252.jpg",
    instruction: "Melt butter either on the stove or in the microwave. Set aside.
    In a large bowl, whisk together flour, sugar, baking powder, salt, and baking soda. In a separate bowl, whisk together yogurt, milk, melted butter, and eggs. Fold wet ingredients into dry ingredients.
    Preheat a waffle iron and, using a pastry brush or paper towel, lightly coat with butter. Cook waffles (using about 1/2 cup batter per waffle) until golden and crisp. Butter the iron in between batches as needed. Serve waffles immediately as they are ready, or keep them warm in a 200 degree oven until ready to serve."
)

waffle_2 = Recipe.create(
    cuisine_id: Cuisine.find_by(name: "American").id, 
    name: "Buttermilk Vanilla Waffles", 
    serving_size: 3,
    rating: 4,
    user_id: User.find_by(name: "Meghann").id,
    time: 20,
    image_url: "https://cf-images.us-east-1.prod.boltdns.net/v1/static/4841592010001/7236901c-eca9-4ae5-91c7-4bc6ed2f15a4/419d7eb9-1751-4da0-987b-d0f2236caac3/1280x720/match/image.jpg",
    instruction: "For the Batter: In a large bowl, combine flour, powdered sugar, salt, baking soda, baking powder, and the scrapings of one large vanilla bean, mixing by hand until the seeds are well dispersed. Add buttermilk, melted butter, egg whites, and vanilla extract and whisk until smooth.
    For the Waffles: Set waffle iron to medium and preheat until the indicator is ready. For an 8-inch square machine, scrape in roughly half the batter. For a 7-inch Belgian machine, scrape in about one-third. Close lid and cook until waffle is golden brown but still steaming, 4 1/2 to 6 minutes depending on the depth and heat of your machine. Serve immediately, with copious amounts of maple syrup, and griddle remaining batter as before."
)

waffle_3 = Recipe.create(
    cuisine_id: Cuisine.find_by(name: "American").id, 
    name: "Bacon, Cheese and Scallion Waffles", 
    serving_size: 8,
    rating: 4,
    user_id: User.find_by(name: "Caryn").id,
    time: 30,
    image_url: "https://www.seriouseats.com/recipes/images/2013/12/20131116-bacon-and-cheese-and-scallion-waffle-1.jpg",
    instruction: "Combine flour, baking soda, baking powder, salt, and sugar in a large bowl and whisk until homogenous. Whisk together eggs, buttermilk, melted butter, and bacon fat in a medium bowl. Pour wet ingredients into dry and mix until just combined and no pockets of dry flour remain. Fold in bacon, cheese, and scallions.
    Preheat a Belgian waffle iron according to manufacturer's instructions. Spray waffle iron with non-stick cooking spray and cook waffle batter according to manufacturer's instructions, using about 1 cup of batter per waffle. Serve as they're ready with maple syrup, or keep warm on a rack in a 200°F oven while you prepare the remaining waffles."
)

pasta_1 = Recipe.create(
    cuisine_id: Cuisine.find_by(name: "Italian").id, 
    name: "Cacio e Pepe", 
    serving_size: 4,
    rating: 5,
    user_id: User.find_by(name: "Jallen").id,
    time: 20,
    image_url: "https://static01.nyt.com/images/2019/06/30/dining/23recipe/COOKING-CACIO-E-PEPE1-articleLarge-v2.jpg",
    instruction: "Put a pot of salted water on to boil. In a large bowl, combine the cheeses and black pepper; mash with just enough cold water to make a thick paste. Spread the paste evenly in the bowl.
    Once the water is boiling, add the pasta. The second before it is perfectly cooked (taste it frequently once it begins to soften), use tongs to quickly transfer it to the bowl, reserving a cup or so of the cooking water. Stir vigorously to coat the pasta, adding a teaspoon or two of olive oil and a bit of the pasta cooking water to thin the sauce if necessary. The sauce should cling to the pasta and be creamy but not watery.
    Plate and dust each dish with additional pecorino and pepper. Serve immediately."
)

chicken_1 = Recipe.create(
    cuisine_id: Cuisine.find_by(name: "Italian").id, 
    name: "Chicken Caprese", 
    serving_size: 4,
    rating: 5,
    user_id: User.find_by(name: "Eric").id,
    time: 25,
    image_url: "https://static01.nyt.com/images/2019/05/08/dining/ss-chicken-caprese/ss-chicken-caprese-articleLarge.jpg",
    instruction: "Pat chicken dry. Cut a lengthwise pocket into the thick side of each breast without cutting all the way through to the other side. Season breasts inside and out using 3/4 teaspoon salt and 1/2 teaspoon pepper.
    Stuff each breast with a quarter of the mozzarella, 2 to 3 tomato slices (depending on size) and 4 to 5 basil leaves. Enclose the filling as much as possible by pulling the chicken over the filling. (The chicken can be prepared to this point, covered and refrigerated up to 24 hours.)
    Heat olive oil in a large 12-inch nonstick pan over medium heat. Sauté garlic, stirring, until golden, about 4 minutes. Using a slotted spoon, scoop out garlic and transfer to a paper towel-lined plate, leaving the oil in the pan.
    Increase heat to medium-high and sauté chicken until golden on the bottom, about 6 minutes. If the breasts darken too quickly, lower heat. Flip and cook for 5 minutes, then cover and cook 2 to 3 minutes more, or until chicken is cooked through and filling is hot.
    Using a spatula, carefully transfer chicken to a platter or four plates. Pour pan juices over the chicken. Garnish with pesto, reserved garlic and remaining basil leaves."
)

chicken_2 = Recipe.create(
    cuisine_id: Cuisine.find_by(name: "Japanese").id, 
    name: "Chicken Teriyaki", 
    serving_size: 8,
    rating: 5,
    user_id: User.find_by(name: "Eric").id,
    time: 30,
    image_url: "https://static01.nyt.com/images/2016/05/28/dining/28COOKING-CHICKEN-TERIYAKI1/28COOKING-CHICKEN-TERIYAKI1-articleLarge.jpg",
    instruction: "In a small saucepan, combine all ingredients except cornstarch and chicken. Bring to boil over high heat. Reduce heat to low and stir until sugar is dissolved, about 3 minutes. Remove from heat and let cool. Discard cinnamon stick and mix in 1/2 cup water.
    Place chicken in a heavy-duty sealable plastic bag. Add soy sauce mixture, seal bag, and turn to coat chicken. Refrigerate for at least an hour, ideally overnight.
    Remove chicken and set aside. Pour mixture into a small saucepan. Bring to a boil over high heat, then reduce heat to low. Mix cornstarch with 2 tablespoons water and add to pan. Stir until mixture begins to thicken, and gradually stir in enough water (about 1/2 cup) until sauce is the consistency of heavy cream. Remove from heat and set aside.
    Preheat a broiler or grill. Lightly brush chicken pieces on all sides with sauce, and broil or grill about 3 minutes per side. While chicken is cooking, place sauce over high heat and bring to a boil, then reduce heat to a bare simmer, adding water a bit at a time to keep mixture at a pourable consistency. To serve, slice chicken into strips, arrange on plates, and drizzle with sauce."
)

chicken_3 = Recipe.create(
    cuisine_id: Cuisine.find_by(name: "Italian").id, 
    name: "Chicken Parmesan", 
    serving_size: 6,
    rating: 5,
    user_id: User.find_by(name: "Eric").id,
    time: 75,
    image_url: "https://static01.nyt.com/images/2017/11/10/dining/chickenparm/chickenparm-articleLarge.jpg",
    instruction: "Heat oven to 400 degrees. Place cutlets between two pieces of parchment or plastic wrap. Using a kitchen mallet or rolling pin, pound meat to even 1/4-inch-thick slices.
    Place flour, eggs and panko into three wide, shallow bowls. Season meat generously with salt and pepper. Dip a piece in flour, then eggs, then coat with panko. Repeat until all the meat is coated.
    Fill a large skillet with 1/2-inch oil. Place over medium-high heat. When oil is hot, fry cutlets in batches, turning halfway through, until golden brown. Transfer to a paper towel-lined plate.
    Spoon a thin layer of sauce over the bottom of a 9-by-13-inch baking pan. Sprinkle one-third of the Parmesan over sauce. Place half of the cutlets over the Parmesan and top with half the mozzarella pieces. Top with half the remaining sauce, sprinkle with another third of the Parmesan, and repeat layering, ending with a final layer of sauce and Parmesan.
    Transfer pan to oven and bake until cheese is golden and casserole is bubbling, about 40 minutes. Let cool a few minutes before serving."
)

water_1 = Recipe.create(
    cuisine_id: Cuisine.find_by(name: "American").id, 
    name: "Plain Old Javascript Water", 
    serving_size: 1,
    rating: 5,
    user_id: User.find_by(name: "Eric").id,
    time: 2,
    image_url: "https://d2ebzu6go672f3.cloudfront.net/media/content/images/cr/b8a1309a-ba53-48c7-bca3-9c36aab2338a.jpg",
    instruction: "It's refreshing plain old water. You drink what you drink and you don't give a stink."
)

puts "seeding recipe_ingredients..."

#==== WATER 1 INGREDIENTS SEED
water_1_ing_1 = RecipeIngredient.create(
    recipe_id: water_1.id,
    ingredient_id: Ingredient.find_by(name: "water").id,
    quantity: 1,
    measurement_type: "cup"
)

#==== CHICKEN 1 INGREDIENTS SEED
chicken_1_ing_1 = RecipeIngredient.create(
    recipe_id: chicken_1.id,
    ingredient_id: Ingredient.find_by(name: "chicken breast").id,
    quantity: 4,
    measurement_type: ""
)

chicken_1_ing_2 = RecipeIngredient.create(
    recipe_id: chicken_1.id,
    ingredient_id: Ingredient.find_by(name: "mozzarella").id,
    quantity: 8,
    measurement_type: "ounces"
)

chicken_1_ing_3 = RecipeIngredient.create(
    recipe_id: chicken_1.id,
    ingredient_id: Ingredient.find_by(name: "tomatoes").id,
    quantity: 6,
    measurement_type: "ounces"
)

chicken_1_ing_4 = RecipeIngredient.create(
    recipe_id: chicken_1.id,
    ingredient_id: Ingredient.find_by(name: "basil leaves").id,
    quantity: 1.5,
    measurement_type: "cups"
)

chicken_1_ing_5 = RecipeIngredient.create(
    recipe_id: chicken_1.id,
    ingredient_id: Ingredient.find_by(name: "olive oil").id,
    quantity: 1,
    measurement_type: "tablespoon"
)

#==== CHICKEN 2 INGREDIENTS SEED
chicken_2_ing_1 = RecipeIngredient.create(
    recipe_id: chicken_2.id,
    ingredient_id: Ingredient.find_by(name: "chicken thighs").id,
    quantity: 8,
    measurement_type: ""
)

chicken_2_ing_2 = RecipeIngredient.create(
    recipe_id: chicken_2.id,
    ingredient_id: Ingredient.find_by(name: "soy sauce").id,
    quantity: 1,
    measurement_type: "cup"
)

chicken_2_ing_3 = RecipeIngredient.create(
    recipe_id: chicken_2.id,
    ingredient_id: Ingredient.find_by(name: "granulated sugar").id,
    quantity: 1,
    measurement_type: "cup"
)

chicken_2_ing_4 = RecipeIngredient.create(
    recipe_id: chicken_2.id,
    ingredient_id: Ingredient.find_by(name: "brown sugar").id,
    quantity: 1.5,
    measurement_type: "teaspoons"
)

chicken_2_ing_5 = RecipeIngredient.create(
    recipe_id: chicken_2.id,
    ingredient_id: Ingredient.find_by(name: "garlic").id,
    quantity: 6,
    measurement_type: "cloves"
)

chicken_2_ing_6 = RecipeIngredient.create(
    recipe_id: chicken_2.id,
    ingredient_id: Ingredient.find_by(name: "ginger").id,
    quantity: 2,
    measurement_type: "tablespoons"
)

chicken_2_ing_7 = RecipeIngredient.create(
    recipe_id: chicken_2.id,
    ingredient_id: Ingredient.find_by(name: "black pepper").id,
    quantity: 0.25,
    measurement_type: "teaspoon"
)
chicken_2_ing_8 = RecipeIngredient.create(
    recipe_id: chicken_2.id,
    ingredient_id: Ingredient.find_by(name: "cinnamon").id,
    quantity: 1,
    measurement_type: "stick"
)

chicken_2_ing_9 = RecipeIngredient.create(
    recipe_id: chicken_2.id,
    ingredient_id: Ingredient.find_by(name: "pineapple juice").id,
    quantity: 1,
    measurement_type: "tablespoon"
)

chicken_2_ing_10 = RecipeIngredient.create(
    recipe_id: chicken_2.id,
    ingredient_id: Ingredient.find_by(name: "cornstarch").id,
    quantity: 2,
    measurement_type: "tablespoons"
)

#==== CHICKEN 3 INGREDIENTS SEED
chicken_3_ing_1 = RecipeIngredient.create(
    recipe_id: chicken_3.id,
    ingredient_id: Ingredient.find_by(name: "chicken").id,
    quantity: 2,
    measurement_type: "pounds"
)

chicken_3_ing_2 = RecipeIngredient.create(
    recipe_id: chicken_3.id,
    ingredient_id: Ingredient.find_by(name: "all-purpose flour").id,
    quantity: 0.5,
    measurement_type: "cup"
)

chicken_3_ing_3 = RecipeIngredient.create(
    recipe_id: chicken_3.id,
    ingredient_id: Ingredient.find_by(name: "eggs").id,
    quantity: 3,
    measurement_type: ""
)

chicken_3_ing_4 = RecipeIngredient.create(
    recipe_id: chicken_3.id,
    ingredient_id: Ingredient.find_by(name: "panko bread crumbs").id,
    quantity: 2,
    measurement_type: "cups"
)

chicken_3_ing_5 = RecipeIngredient.create(
    recipe_id: chicken_3.id,
    ingredient_id: Ingredient.find_by(name: "kosher salt").id,
    quantity: 1,
    measurement_type: "pinch"
)

chicken_3_ing_6 = RecipeIngredient.create(
    recipe_id: chicken_3.id,
    ingredient_id: Ingredient.find_by(name: "black pepper").id,
    quantity: 1,
    measurement_type: "pinch"
)

chicken_3_ing_7 = RecipeIngredient.create(
    recipe_id: chicken_3.id,
    ingredient_id: Ingredient.find_by(name: "tomato sauce").id,
    quantity: 5,
    measurement_type: "cups"
)
chicken_3_ing_8 = RecipeIngredient.create(
    recipe_id: chicken_3.id,
    ingredient_id: Ingredient.find_by(name: "Parmigiano-Reggiano").id,
    quantity: 1,
    measurement_type: "cup"
)

chicken_3_ing_9 = RecipeIngredient.create(
    recipe_id: chicken_3.id,
    ingredient_id: Ingredient.find_by(name: "mozzarella").id,
    quantity: 0.5,
    measurement_type: "pound"
)

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

#===== WAFFLE 3 INGREDIENTS SEED
waffle_3_ing_1 = RecipeIngredient.create(
    recipe_id: waffle_3.id,
    ingredient_id: Ingredient.find_by(name: "all-purpose flour").id,
    quantity: 2,
    measurement_type: "cups"
)

waffle_3_ing_2 = RecipeIngredient.create(
    recipe_id: waffle_3.id,
    ingredient_id: Ingredient.find_by(name: "baking soda").id,
    quantity: 0.5,
    measurement_type: "teaspoon"
)

waffle_3_ing_3 = RecipeIngredient.create(
    recipe_id: waffle_3.id,
    ingredient_id: Ingredient.find_by(name: "baking powder").id,
    quantity: 1,
    measurement_type: "teaspoon"
)

waffle_3_ing_4 = RecipeIngredient.create(
    recipe_id: waffle_3.id,
    ingredient_id: Ingredient.find_by(name: "kosher salt").id,
    quantity: 1.5,
    measurement_type: "teaspoons"
)

waffle_3_ing_5 = RecipeIngredient.create(
    recipe_id: waffle_3.id,
    ingredient_id: Ingredient.find_by(name: "sugar").id,
    quantity: 2,
    measurement_type: "tablespoons"
)

waffle_3_ing_6 = RecipeIngredient.create(
    recipe_id: waffle_3.id,
    ingredient_id: Ingredient.find_by(name: "eggs").id,
    quantity: 3,
    measurement_type: ""
)

waffle_3_ing_7 = RecipeIngredient.create(
    recipe_id: waffle_3.id,
    ingredient_id: Ingredient.find_by(name: "buttermilk").id,
    quantity: 2,
    measurement_type: "cups"
)

waffle_3_ing_8 = RecipeIngredient.create(
    recipe_id: waffle_3.id,
    ingredient_id: Ingredient.find_by(name: "unsalted butter").id,
    quantity: 2,
    measurement_type: "tablespoons"
)

waffle_3_ing_9 = RecipeIngredient.create(
    recipe_id: waffle_3.id,
    ingredient_id: Ingredient.find_by(name: "bacon").id,
    quantity: 6,
    measurement_type: "ounces"
)

waffle_3_ing_10 = RecipeIngredient.create(
    recipe_id: waffle_3.id,
    ingredient_id: Ingredient.find_by(name: "cheddar cheese").id,
    quantity: 6,
    measurement_type: "ounces"
)

waffle_3_ing_11 = RecipeIngredient.create(
    recipe_id: waffle_3.id,
    ingredient_id: Ingredient.find_by(name: "scallions").id,
    quantity: 6,
    measurement_type: ""
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
# t.integer "serving_size"
# t.integer "rating"
# t.integer "user_id"
# t.integer "time"