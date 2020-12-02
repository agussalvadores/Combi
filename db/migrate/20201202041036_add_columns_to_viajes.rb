class AddColumnsToViajes < ActiveRecord::Migration[6.0]
  def change
    add_column :viajes, :fecha_salida,:date
    add_column :viajes, :fecha_llegada,:date
  end
end
