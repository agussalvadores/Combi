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
			render :new
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
			render :edit
		end 
	end

	def delete
		@insumo = Insumo.find(params[:id])
		@insumo.destroy
		redirect_to insumos_path, notice: "Insumo eliminado correctamente"
	end
	
	private
		def insumo_parametros
			params.require(:insumo).permit(:nombre, :precio, :url_img)
		end
end