class ChangeColumasViajes < ActiveRecord::Migration[6.0]
  def change
    change_column(:viajes, :origen, :integer)
    change_column(:viajes, :destino, :integer)
  end
end
