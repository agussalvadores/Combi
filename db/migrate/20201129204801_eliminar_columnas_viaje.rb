class EliminarColumnasViaje < ActiveRecord::Migration[6.0]
  def change
    remove_column :viajes, :combi, :string
    remove_column :viajes, :chofer, :string
  end
end
