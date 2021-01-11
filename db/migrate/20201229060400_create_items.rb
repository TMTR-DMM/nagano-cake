class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :category_id, null: false
      t.string :name, null: false
      t.text :caption, null: false
      t.integer :excluding_price, null: false
      t.string :image_id, null: false
      t.boolean :is_deleted, null: false, default: false

      t.timestamps
    end
  end
end
