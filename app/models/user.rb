class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  enum role: { admin: 0, pasajero: 1, chofer: 2 }
  validates :fecha_de_nacimiento, presence: true
  validate :validate_age

  private
  def validate_age
     if fecha_de_nacimiento.present? && fecha_de_nacimiento.to_date > 18.years.ago.to_date
      errors.add(:fecha_de_nacimiento, 'Usted debe ser mayor de edad.') 
	end
end
end