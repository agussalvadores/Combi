class AddEstadoToPasaje < ActiveRecord::Migration[6.0]
  def change
    add_column :pasajes, :estado, :string
  end
end
