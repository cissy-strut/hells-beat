class AddColumnsToMatchings < ActiveRecord::Migration[7.0]
  def change
    add_column :matchings, :user_one_status, :string
    add_column :matchings, :user_two_status, :string
  end
end
