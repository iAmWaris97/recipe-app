json.extract! recipe_food, :id, :quantity, :food_id, :recipe_id, :created_at, :updated_at
json.url recipe_food_url(recipe_food, format: :json)
