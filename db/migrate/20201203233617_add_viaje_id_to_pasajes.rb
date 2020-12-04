class AddViajeIdToPasajes < ActiveRecord::Migration[6.0]
  def change
    add_reference :pasajes, :viaje, index: true
    add_foreign_key :pasajes, :viajes
  end
end
