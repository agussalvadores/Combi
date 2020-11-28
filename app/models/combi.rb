class Combi < ApplicationRecord
	validates :patente , presence:true , uniqueness:true
	enum tipo: { Comoda: '1' , Supercomoda: '2' }
	scope :availables, -> {where(deleted_at: nil)}
		default_scope -> {order('patente asc')}
end
