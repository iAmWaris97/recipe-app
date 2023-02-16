class Inventory < ApplicationRecord
  has_many :inventory_foods, dependent: :delete_all
end
