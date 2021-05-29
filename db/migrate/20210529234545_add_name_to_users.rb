class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :school_name, :string
    add_column :users, :year, :integer
    add_column :users, :school, :string
  end
end
