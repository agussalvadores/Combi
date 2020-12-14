class AddColumnsToPasaje < ActiveRecord::Migration[6.0]
  def change
    add_column :pasajes, :nombre_tarjeta, :string
    add_column :pasajes, :dni_tarjeta, :integer
  end
end
