class Viaje < ApplicationRecord
	has_and_belongs_to_many :ciudads
	enum estado: { Pendiente: '1' , Viajando: '2' , Finalizado: '3'}
	belongs_to :combi
	belongs_to :user
	has_many :pasajes

end
