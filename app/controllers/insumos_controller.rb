class InsumosController < ApplicationController
	def index
		@insumos = Insumo.all
	end

	def new
		@insumo =Insumo.new
	end

	def create
		@insumo =Insumo.create(insumo_parametros)
		if @insumo.save
			redirect_to insumos_path, notice: "Insumo creado correctamente"
		else
			redirect_to insumos_new_path, notice: "El insumo ya existe"
		end
	end

	def edit
		@insumo = Insumo.find(params[:id])
	end

	def update
		@insumo = Insumo.find(params[:id])
		if @insumo.update(insumo_parametros)
			redirect_to insumos_path, notice: "Datos actualizados correctamente"
		else
			redirect_to edit_insumo_path(params[:id]), notice: "El insumo ya existe"
		end
	end

	def delete
		@insumo = Insumo.find(params[:id])
		if @insumo.pasajes.empty?
			@insumo.destroy
			redirect_to insumos_path, notice: "Insumo eliminado correctamente"
		else
				redirect_to insumos_path, notice: "El insumo no se puede eliminar debido a que figura en uno o mas pasajes, si desea dejar de venderlos setee la cantidad en 0"
		end
	end

	private
		def insumo_parametros
			params.require(:insumo).permit(:nombre, :precio, :stock, :url_img)
		end
end
