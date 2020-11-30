class AddColumnsUsers < ActiveRecord::Migration[6.0]
  def change
  	add_column :users, :card, :integer
  	add_column :users, :cods, :integer
  	add_column :users, :vencimientoMes, :integer
  	add_column :users, :vencimientoAño, :integer
  end
end
