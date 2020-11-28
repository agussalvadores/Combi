class CombisController < ApplicationController
	def index
		@combis = Combi.all	
	end
	
	def new
		@combi = Combi.new
	end

	def create
		@combi = Combi.create(combi_parametros)
		if @combi.save!
			redirect_to combis_path, notice: "Combi creada correctamente"
		else
			render :new
		end
	end

	def edit
		@combi = Combi.find(params[:id])
	end

	def update
		@combi = Combi.find(params[:id])
		if @combi.update(combi_parametros)
			redirect_to combis_path, notice: "Datos actualizados correctamente"
		else
			render :edit
		end 
	end

	def delete
		@combi = Combi.find(params[:id])
		@combi.destroy
		redirect_to combis_path, notice: "Combi eliminada correctamente"
	end
	
	private
		def combi_parametros
			params.require(:combi).permit([:patente, :tipo, :cant_asientos, :descripcion])
		end
end

