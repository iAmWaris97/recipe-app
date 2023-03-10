class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :delete_all

  validates :name, :preparation_time, :cooking_time, :description, presence: true
end
