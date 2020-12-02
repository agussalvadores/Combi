class Ciudad < ApplicationRecord
  has_and_belongs_to_many :viajes
end
