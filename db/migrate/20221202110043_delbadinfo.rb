class Delbadinfo < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :country
    remove_column :users, :gender
    remove_column :users, :last_name
    remove_column :users, :first_name
  end
end
