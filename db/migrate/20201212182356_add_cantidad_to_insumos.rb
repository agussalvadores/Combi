class AddCantidadToInsumos < ActiveRecord::Migration[6.0]
  def change
  	add_column :insumos, :cantidad , :integer
  end
end
