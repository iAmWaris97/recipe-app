# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.new(name: 'User 1', email: 'user@example.com', password: 'password')
user.confirmation_token = nil
user.confirmed_at = Time.now.utc
user.save!
# Food Creation
Food.create(name: 'Apples', measurement_unit: 'pound', price: 2)
Food.create(name: 'Milk', measurement_unit: 'gallon', price: 4)
Food.create(name: 'Eggs', measurement_unit: 'dozen', price: 3)
Food.create(name: 'Ground Beef', measurement_unit: 'pound', price: 6)
Food.create(name: 'Pasta', measurement_unit: 'box', price: 1)
Food.create(name: 'Salmon', measurement_unit: 'pound', price: 10)
Food.create(name: 'Potatoes', measurement_unit: 'pound', price: 2)
Food.create(name: 'Spinach', measurement_unit: 'bunch', price: 1)
Food.create(name: 'Cheese', measurement_unit: 'block', price: 5)
Food.create(name: 'Chicken', measurement_unit: 'pound', price: 8)
# Recipes Creation
Recipe.create(name: "Vanilla Cake", preparation_time: "35 minutes", cooking_time: "25 minutes",
description: "This vanilla cake batter is strong enough for shaped cakes,
tiered cakes (see the slight variation in my homemade wedding cake recipe), and holds up beautifully under fondant.
Use this batter for vanilla cupcakes, Bundt cake, or even piñata cake.
It\'s classy enough for a wedding celebration, but unassuming enough for a big family dinner.",
public: false, user_id: 1)
Recipe.create(name: "Barbeque Chicken", preparation_time: "2 hours", cooking_time: "3 hour",description:
"Chicken thighs are baked in a homemade BBQ sauce made with ingredients you probably already have on hand,
such as ketchup and brown sugar.", user_id: 1)
Recipe.create(name: "Spaghetti Bolognese", preparation_time: "15 minutes", cooking_time: "30 minutes", description: "A classic Italian pasta dish with a rich meaty sauce.", public: false, user_id: 1)
Recipe.create(name: "Miso Soup", preparation_time: "5 minutes", cooking_time: "10 minutes", description: "A simple and delicious Japanese soup made with miso paste and tofu.", public: false, user_id: 1)
Recipe.create(name: "Chocolate Chip Cookies", preparation_time: "20 minutes", cooking_time: "12 minutes", description: "A classic American dessert that's easy to make and always a crowd-pleaser.", public: true, user_id: 1)
Recipe.create(name: "Chicken Curry", preparation_time: "30 minutes", cooking_time: "45 minutes", description: "A spicy and flavorful Indian dish that's perfect for dinner.", public: false, user_id: 1)
Recipe.create(name: "Roasted Vegetables", preparation_time: "10 minutes", cooking_time: "25 minutes", description: "A healthy and delicious side dish that's perfect for any meal.", public: true, user_id: 1)
Recipe.create(name: "Beef Stew", preparation_time: "20 minutes", cooking_time: "2 hours", description: "A hearty and satisfying dish that's perfect for cold weather.", public: true, user_id: 1)
Recipe.create(name: "Beef Tacos", preparation_time: "15 minutes", cooking_time: "20 minutes", description: "A quick and easy dinner recipe that's perfect for busy weeknights. Serve with your favorite toppings like cheese, sour cream, and salsa.", public: true, user_id: 1)
# Recipe Food Creation
RecipeFood.create(quantity: 1, food_id: 2, recipe_id: 1)
RecipeFood.create(quantity: 3, food_id: 3, recipe_id: 2)
RecipeFood.create(quantity: 4, food_id: 4, recipe_id: 2)
RecipeFood.create(quantity: 2, food_id: 5, recipe_id: 3)
RecipeFood.create(quantity: 1, food_id: 6, recipe_id: 3)
RecipeFood.create(quantity: 3, food_id: 7, recipe_id: 4)
RecipeFood.create(quantity: 4, food_id: 8, recipe_id: 4)
RecipeFood.create(quantity: 2, food_id: 9, recipe_id: 5)
RecipeFood.create(quantity: 1, food_id: 10, recipe_id: 5)
RecipeFood.create(quantity: 1, food_id: 2, recipe_id: 9)
RecipeFood.create(quantity: 1, food_id: 9, recipe_id: 8)
RecipeFood.create(quantity: 1, food_id: 7, recipe_id: 8)
RecipeFood.create(quantity: 1, food_id: 5, recipe_id: 7)
RecipeFood.create(quantity: 1, food_id: 6, recipe_id: 7)
# Inventory Creation
Inventory.create(Name: 'Inventory 1', user_id: 1)
Inventory.create(Name: 'Inventory 2', user_id: 1)
Inventory.create(Name: 'Inventory 3', user_id: 1)
# Inventory Food Creation
InventoryFood.create(quantity: 10, inventory_id: 1, food_id: 1)
InventoryFood.create(quantity: 5, inventory_id: 1, food_id: 2)
InventoryFood.create(quantity: 15, inventory_id: 2, food_id: 5)
InventoryFood.create(quantity: 20, inventory_id: 2, food_id: 7)
InventoryFood.create(quantity: 8, inventory_id: 3, food_id: 10)