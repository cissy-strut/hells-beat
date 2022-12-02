class Experienceenstring < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :experience
    add_column :users, :experience, :string

  end
end
