class AddComprarIdToPasaje < ActiveRecord::Migration[6.0]
  def change
    add_reference :pasajes, :comprar, index: true
    add_foreign_key :pasajes, :comprars
  end
end
