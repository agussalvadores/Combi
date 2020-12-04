class Pasaje < ApplicationRecord
  belongs_to :user
  belongs_to :comprar
  belongs_to :viaje
  has_many :join_insumos_pasajes
  has_many :insumos, through: :join_insumos_pasajes
  validates :dni_t, length: {minimum:8 , maximum:8}
  validates :cod_t, length: {minimum:3 , maximum:3}
  validates :nro_t, length: {minimum:16 , maximum:16}
end
