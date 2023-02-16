class Food < ApplicationRecord
  has_many :recipefoods, foreign_key: :food_id, dependent: :destroy
  has_many :inventory_foods, foreign_key: :food_id, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :measurement_unit, presence: true
  validates :price, presence: true  
end
