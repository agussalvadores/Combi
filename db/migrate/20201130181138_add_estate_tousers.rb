class AddEstateTousers < ActiveRecord::Migration[6.0]
  def change
  	add_column :users, :libre , :boolean, default: true
  end
end
