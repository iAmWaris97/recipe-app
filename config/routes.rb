Rails.application.routes.draw do
  devise_for :users
  resources :recipe_foods
  resources :inventory_foods
  resources :foods
  resources :recipes, only: [:index] do
  end
  resources :inventories
  get "/public_recipes", to: "recipes#public", as: :public_recipes
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "recipes#index"
end
