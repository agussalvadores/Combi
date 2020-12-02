class DeleteColumnInChofer < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :apellido, :string
  end
end
