class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
  	add_column :users, :dni, :integer
  	add_column :users, :celular, :integer
  	add_column :users, :nombre , :string
  	add_column :users, :apellido, :string
  	add_column :users, :fecha_de_nacimiento, :datetime

  end
end
