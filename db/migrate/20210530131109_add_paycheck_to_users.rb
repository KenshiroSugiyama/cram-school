class AddPaycheckToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :paycheck, :boolean, default: false, null: false
  end
end
