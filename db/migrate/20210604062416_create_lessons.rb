class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.references :user, foreign_key: true
      t.string :subject , null: false
      t.integer :plan, null: false
      t.integer :current, null: false , default: 0
      t.boolean :payment, null: false , default: false
      t.timestamps
    end
  end
end
