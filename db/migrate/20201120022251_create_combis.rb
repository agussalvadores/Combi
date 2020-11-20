class CreateCombis < ActiveRecord::Migration[6.0]
  def change
    create_table :combis do |t|
      t.string :patente
      t.string :tipo
      t.integer :cant_asientos
      t.text :descripcion
      t.timestamps
    end
  end
end
