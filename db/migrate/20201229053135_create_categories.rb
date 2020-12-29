class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :category, null: false
      t.boolean :is_deleted, default: false, null: false

      t.timestamps
    end
  end
end
