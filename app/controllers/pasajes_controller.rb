class PasajesController < ApplicationController
  def comprar
    @viaje=params[:id]
    @pasajes = Pasaje.all
    @pasaje = Pasaje.new
    @insumos =Insumo.all
  end
  def confirmar_compra
    @pasajes = Pasaje.all
    @pasaje = Pasaje.new
    @insumos =Insumo.all
  end

  def new
		@pasajes = Pasaje.new
	end

	def create
		@pasaje = Pasaje.create(pasaje_parametros)
		if @pasaje.save!
			redirect_to confirmar_compra_path, notice: "Combi creada correctamente"
		else
			redirect_to viajes_buscador_path, notice: "ERROR"
		end
	end
  private
		def pasaje_parametros
			params.require(:pasaje).permit([ :titular, :dni_t, :precio, :nro_t, :v_m_tarjeta, :v_a_tarjeta, :cod_t, :user_id, :comprar_id, :viaje_id])
		end
end
