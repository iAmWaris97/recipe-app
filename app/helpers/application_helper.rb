module ApplicationHelper
  def dropdown_recipes
    Recipe.all
  end

  def dropdown_foods
    Food.all
  end
end
