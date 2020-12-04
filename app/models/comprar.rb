class Comprar < ApplicationRecord
  has_many :pasajes
  belongs_to :user
end
