class AddCombiIdToViaje < ActiveRecord::Migration[6.0]
  def change
    add_reference :viajes, :combi, index: true
    add_foreign_key :viajes, :combis
  end
end
