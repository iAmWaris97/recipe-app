module ApplicationHelper
  def dropdown_recipes
    Recipe.all
  end

  def dropdown_foods
    Food.all
  end

  def dropdown_inventories
    Inventory.all
  end
end
