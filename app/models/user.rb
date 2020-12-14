class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :viajes
  has_many :pasajes
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  enum role: { admin: 0, pasajero: 1, chofer: 2 }
  validates :fecha_de_nacimiento, presence: true
  validate :validate_age
  validates :dni, length: {minimum:7 , maximum:8}
  validates :dni, uniqueness: true

  private
  def validate_age
     if fecha_de_nacimiento.present? && fecha_de_nacimiento.to_date > 18.years.ago.to_date
      errors.add(:fecha_de_nacimiento, 'Debe ser mayor de edad.')
	end
end
end
