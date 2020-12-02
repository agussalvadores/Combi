class Viaje < ApplicationRecord
	has_and_belongs_to_many :ciudads
	belongs_to :combi
	belongs_to :user
end
