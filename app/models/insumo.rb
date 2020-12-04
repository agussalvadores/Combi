class Insumo < ApplicationRecord
  has_many :join_insumos_pasajes
  has_many :pasajes, through: :join_insumos_pasajes
end
