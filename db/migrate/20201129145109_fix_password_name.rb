class FixPasswordName < ActiveRecord::Migration[6.0]
  def self.up
    rename_column :users, :password, :password_digest
  end
end