class ShoppingListsController < ApplicationController
  def index
    @recipe_foods = RecipeFood.includes(:food, :recipe).where(recipe_id: params[:recipe_id])
    @recipe_name = Recipe.find(params[:recipe_id])
    @inventory_name = Inventory.find(params[:inventory_id])
    @inventory_foods = InventoryFood.where(inventory_id: params[:inventory_id])
    @recipes = Recipe.find(params[:recipe_id])
    @inventory = Inventory.find(params[:inventory_id])
    @general_shopping = Recipe.find(params[:recipe_id])
  end
end
