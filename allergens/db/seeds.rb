# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.destroy_all
RecipeIngredient.destroy_all
User.destroy_all


#User
matt = User.find_or_create_by(name: "Matt")

#Recipes
pbj = Recipe.find_or_create_by(name: "PBJ", user_id: matt.id)

#ingredients
jelly = Ingredient.find_or_create_by(name: "Jelly")
pb = Ingredient.find_or_create_by(name: "Peanut Butter")
bread = Ingredient.find_or_create_by(name: "Bread")

#recipe_ingredients
pbj_j= RecipeIngredient.find_or_create_by(recipe_id: pbj.id, ingredient_id: jelly.id)
pb_pb = RecipeIngredient.find_or_create_by(recipe_id: pbj.id, ingredient_id: pb.id)
pb_bread = RecipeIngredient.find_or_create_by(recipe_id: pbj.id, ingredient_id: bread.id)
