class CreateViajes < ActiveRecord::Migration[6.0]
  def change
    create_table :viajes do |t|
      t.string :origen
      t.string :destino
      t.string :hor_salida
      t.string :hor_llegada
      t.integer :precio
      t.integer :cant_pasajes
      t.string :combi
      t.string :chofer

      t.timestamps
    end
  end
end
