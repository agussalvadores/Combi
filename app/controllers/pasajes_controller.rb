class PasajesController < ApplicationController
def index
  @pasajes = Pasaje.all
end

  def comprar
    @viaje=params[:id]
    @pasajes = Pasaje.all
    @pasaje = Pasaje.new
    @insumos =Insumo.all
  end
  def confirmar_compra
    @pasajes = Pasaje.all
    @pasaje = params[:id]
    @insumos =Insumo.all
  end

  def new
		@pasaje = Pasaje.new
	end

	def create
		@pasaje = Pasaje.create(pasaje_parametros)
		if @pasaje.save!
			redirect_to confirmar_compra_pasaje_path(@pasaje)
		else
			redirect_to viajes_buscador_path, notice: "ERROR"
		end
	end
  def show
    @pasaje = Pasaje.find(params[:id])
    @insumos = params[:insumo_ids]
  end
  private
		def pasaje_parametros
			params.require(:pasaje).permit([ :titular, :dni_t, :precio, :nro_t, :v_m_tarjeta, :v_a_tarjeta, :cod_t, :user_id,  :viaje_id,:cantidad,:total,:insumo_ids[]])
		end
end
