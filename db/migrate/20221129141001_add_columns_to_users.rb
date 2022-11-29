class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :instrument, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :bio, :string
    add_column :users, :experience, :integer
    add_column :users, :style, :string
    add_column :users, :profile_pic, :string
    add_column :users, :birth_date, :date
    add_column :users, :gender, :string
  end
end
