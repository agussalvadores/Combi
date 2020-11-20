class Combi < ApplicationRecord
	validates :patente , presence:true , uniqueness:true
	enum tipo: [:comoda,:supercomoda]
	scope :availables, -> {where(deleted_at: nil)}
		default_scope -> {order('patente asc')}
	belongs_to :user
end
