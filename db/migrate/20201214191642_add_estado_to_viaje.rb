class AddEstadoToViaje < ActiveRecord::Migration[6.0]
  def change
    add_column :viajes, :estado, :string
  end
end
