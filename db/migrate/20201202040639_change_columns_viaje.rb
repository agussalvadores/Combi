class ChangeColumnsViaje < ActiveRecord::Migration[6.0]
  def change
    change_column :viajes, :hor_llegada, :time
    change_column :viajes, :hor_salida, :time
  end
end
