class RenameOrderedQty < ActiveRecord::Migration[5.2]
  def change
    rename_column :cart_items, :ordered_qty, :a
  end
end
