class CiudadsController < ApplicationController

    def index
        @ciudads = Ciudad.all

    end

    def new
        @ciudad = Ciudad.create

    end


	def create
		@ciudad =Ciudad.create(ciudad_parametros)
		if @ciudad.save
			redirect_to ciudades_path, notice: "Ciudad creada correctamente"
		else
			render :new
		end
	end

	def edit
		@ciudad = Ciudad.find(params[:id])
	end

	def update
		@ciudad = Ciudad.find(params[:id])
		if @ciudad.update(ciudad_parametros)
			redirect_to ciudades_path, notice: "Datos actualizados correctamente"
		else
			render :edit
		end
	end

	def delete
		@ciudad = Ciudad.find(params[:id])
    if (Viaje.where(origen: @ciudad.id).empty? &&Viaje.where(destino: @ciudad.id).empty?)
      @ciudad.destroy
		  redirect_to ciudades_path, notice: "Ciudad eliminada correctamente"
    else
      redirect_to ciudades_path, notice: "No se puede eliminar la ciudad debido a que pertenece a algun viaje"
    end
  end

	private
		def ciudad_parametros
			params.require(:ciudad).permit(:nombre, :provincia, :descrip, :url_img)
		end
end
