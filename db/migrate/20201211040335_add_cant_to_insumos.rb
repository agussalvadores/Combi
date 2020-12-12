class AddCantToInsumos < ActiveRecord::Migration[6.0]
  def change
    add_column :insumos, :stock, :integer
  end
end
