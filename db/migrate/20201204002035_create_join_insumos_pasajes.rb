class CreateJoinInsumosPasajes < ActiveRecord::Migration[6.0]
  def change
    create_table :join_insumos_pasajes do |t|
      t.belongs_to :insumo, index: true, foreign_key: true
      t.belongs_to :pasaje, index: true, foreign_key: true

      t.timestamps null:false
    end
  end
end
