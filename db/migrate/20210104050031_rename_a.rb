class RenameA < ActiveRecord::Migration[5.2]
  def change
    rename_column :cart_items, :a, :amount
  end
end
