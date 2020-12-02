class CreateCiudadsViajes < ActiveRecord::Migration[6.0]
  def change
    create_table :ciudads_viajes, :id =>false do |t|
      t.references :ciudad
      t.references :viaje
  end
end
end
