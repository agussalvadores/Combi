class AddColumnToPasaje < ActiveRecord::Migration[6.0]
  def change
    add_column :pasajes, :nro_t, :integer
    add_column :pasajes, :v_m_tarjeta, :integer
    add_column :pasajes, :v_a_tarjeta, :integer
    add_column :pasajes, :cod_t, :integer
  end
end
