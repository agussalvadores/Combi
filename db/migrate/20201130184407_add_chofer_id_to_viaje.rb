class AddChoferIdToViaje < ActiveRecord::Migration[6.0]
  def change
    add_reference :viajes, :user, index: true
    add_foreign_key :viajes, :users
  end
end
