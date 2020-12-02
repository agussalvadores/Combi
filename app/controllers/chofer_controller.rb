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
	 if @chofer.fecha_de_nacimiento.present? && @chofer.fecha_de_nacimiento.to_date > 18.years.ago.to_date
      redirect_to new_chofer_path, notice: 'Debe ser mayor de edad.'
     else
	 if @chofer.save
		redirect_to chofer_index_path, notice: "Registro exitoso"
	 else
	    redirect_to new_chofer_path, notice: "No se pudo registrar"
	 end
	end
	end
	def update
	@chofer = User.find(params[:id])

		 if @chofer.update(chofer_params)
			 redirect_to chofer_index_path, notice: "Datos actualizados"
			 else
			 if @chofer.fecha_de_nacimiento.present? && @chofer.fecha_de_nacimiento.to_date > 18.years.ago.to_date
      	 	 redirect_to edit_chofer_path, notice: 'Debe ser mayor de edad.'

	     	 else
	     	 	redirect_to edit_chofer_path, notice: "No se pudo actualizar"
	     	 end
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
		params.require(:user).permit([:email,:password,:password_confirmation,:nombre,:fecha_de_nacimiento,:dni,:celular])
	end
end
