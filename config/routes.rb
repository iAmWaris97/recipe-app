Rails.application.routes.draw do
  devise_for :users
  resources :recipe_foods
  resources :inventory_foods
  resources :foods
  resources :recipes
  resources :inventories
  get "/public_recipes", to: "recipes#public", as: :public_recipes
  get "/general_shopping_list", to: "recipes#generate_shopping", as: :generate_shopping
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "recipes#index"
end
