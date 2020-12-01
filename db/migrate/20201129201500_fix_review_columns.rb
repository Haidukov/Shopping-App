class FixReviewColumns < ActiveRecord::Migration[6.0]
  def change
    rename_column :reviews, :shopping_item_id_id, :shopping_item_id
    rename_column :reviews, :user_id_id, :user_id
  end
end
