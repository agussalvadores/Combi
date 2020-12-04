class CreatePasajes < ActiveRecord::Migration[6.0]
  def change
    create_table :pasajes do |t|
      t.string :titular
      t.string :dni_t
      t.integer :precio

      t.timestamps
    end
  end
end
