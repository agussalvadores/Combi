class AddUserIdToComprar < ActiveRecord::Migration[6.0]
  def change
    add_reference :comprars, :user, index: true
    add_foreign_key :comprars, :users
  end
end
