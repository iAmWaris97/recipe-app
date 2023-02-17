class CreateShoppingLists < ActiveRecord::Migration[7.0]
  def change
    create_table :shopping_lists do |t|
      t.references :inventory, foreign_key: { to_table: 'inventories' }
      t.references :recipe, foreign_key: { to_table: 'recipes' }
      
      t.timestamps
    end
  end
end