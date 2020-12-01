class CreateShoppingItems < ActiveRecord::Migration[6.0]
  def change
    create_table :shopping_items do |t|
      t.string :name
      t.decimal :price, precision: 7, scale: 2
      t.string :imageUrl
      t.timestamps
    end
  end
end
