class ChangeNameOfOrders < ActiveRecord::Migration[5.2]
  def change
    change_column :orders, :name, :string, null: false
  end
end
