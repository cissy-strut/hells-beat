class AddColumnsToChatrooms < ActiveRecord::Migration[7.0]
  def change
    add_reference(:chatrooms, :user, index: { name: "user_one" })
    add_column :chatrooms, :user_two_id, :integer
  end
end
