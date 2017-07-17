class AddDescuentoToCategory < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :descuento, :integer, null: false, default: 0
  end
end
