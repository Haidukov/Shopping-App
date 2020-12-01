class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :user_id
      t.belongs_to :shopping_item_id
      t.integer :rating, inclusion: 1..5
      t.timestamps
    end
  end
end
