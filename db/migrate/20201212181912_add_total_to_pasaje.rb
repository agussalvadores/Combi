class AddTotalToPasaje < ActiveRecord::Migration[6.0]
  def change
  	add_column :pasajes, :total, :float
  end
end
