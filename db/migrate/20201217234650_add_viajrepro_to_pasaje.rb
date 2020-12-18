class AddViajreproToPasaje < ActiveRecord::Migration[6.0]
  def change
    add_column :pasajes, :viaj_aux, :integer
  end
end
