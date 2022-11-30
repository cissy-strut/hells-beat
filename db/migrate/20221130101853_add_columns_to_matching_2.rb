class AddColumnsToMatching2 < ActiveRecord::Migration[7.0]
  def change
    add_reference(:matchings, :user, index: { name: "user_one_id" })
    add_column :matchings, :user_two_id, :integer
  end
end
