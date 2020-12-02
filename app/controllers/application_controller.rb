class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	before_action :configure_permitted_parameters, if: :devise_controller?

	protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password,:password_confirmation,:nombre,:fecha_de_nacimiento,:dni)}	
		devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:nombre,:fecha_de_nacimiento, :email, :password, :current_password,:celular,:dni,:card)}

	end
end