class Addcolumnmatching < ActiveRecord::Migration[7.0]
  def change
    remove_column :chatrooms, :user_id
    remove_column :chatrooms, :user_two_id
    add_column :chatrooms, :matching_id, :bigint
  end
end
