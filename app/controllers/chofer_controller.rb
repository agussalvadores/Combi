class ChoferController < ApplicationController
	before_action :authenticate_user! 
	def index
		@choferes= User.where(role: "chofer")
	end
	def show
	 @chofer= User.find(params[:id])

	end
	def edit
		@chofer= User.find(params[:id]) 
	 
	end

	def new
		@chofer= User.new
	end
	def create
     @chofer= User.new(chofer_params)
	 @chofer.role= "chofer"
	if @chofer.save!
		redirect_to chofer_index_path, notice: "Registro exitoso"
	else
		redirect_to chofer_index_path, notice: "No se pudo registrar"
	end
	end
	def update
		@chofer = User.find(params[:id])
		if @chofer.update(chofer_params)
			redirect_to chofer_index_path, notice: "Datos actualizados"
		else 
			render :edit
		end
	end	
	def destroy
		@chofer= User.find(params[:id])
		if @chofer.libre 
			@chofer.destroy
			redirect_to chofer_index_path
		else
			redirect_to chofer_index_path, notice: "No se puede eliminar, el chofer tiene asignado un viaje"
		end
	end
	
	private
	def chofer_params
		params.require(:user).permit([:email,:password,:password_confirmation,:nombre,:apellido,:fecha_de_nacimiento,:dni,:celular])
	end	
end
