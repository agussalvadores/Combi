class JoinInsumosPasaje < ApplicationRecord
  belongs_to :insumo
  belongs_to :pasaje
end
