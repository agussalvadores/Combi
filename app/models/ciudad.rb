class Ciudad < ApplicationRecord
  has_and_belongs_to_many :viajes
  validates :nombre, presence: true, uniqueness: { scope: :provincia, case_sensitive: false }
  validates :provincia, presence: true, uniqueness: { scope: :nombre, case_sensitive: false }
  
  
end