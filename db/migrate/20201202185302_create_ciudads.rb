class CreateCiudads < ActiveRecord::Migration[6.0]
  def change
    create_table :ciudads do |t|
     t.string "nombre"
    t.string "provincia"
    t.text "descrip"
    t.string "url_img"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    end
  end
end
