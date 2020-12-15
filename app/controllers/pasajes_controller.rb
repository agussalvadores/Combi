class PasajesController < ApplicationController
def index
  if current_user.role=="pasajero"
    @pasajes = Pasaje.where(user_id: current_user.id)
  else
    @viajes = Viaje.where(user_id: current_user.id)
  end
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
    @insumos =params[:insumos]
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
<<<<<<< HEAD
			params.require(:pasaje).permit([ :titular, :dni_t, :precio, :nro_t, :v_m_tarjeta, :v_a_tarjeta, :cod_t, :user_id,  :viaje_id,:cantidad,:total,:dni_tarjeta,:nombre_tarjeta,:insumos])
=======
<<<<<<< HEAD
			params.require(:pasaje).permit([ :titular, :dni_t, :precio, :nro_t, :v_m_tarjeta, :v_a_tarjeta, :cod_t, :user_id,  :viaje_id,:cantidad,:total,:insumo_ids[]])
=======
			params.require(:pasaje).permit([ :titular, :dni_t, :precio, :nro_t, :v_m_tarjeta, :v_a_tarjeta, :cod_t, :user_id,  :viaje_id,:cantidad,:total,:dni_tarjeta,:nombre_tarjeta])
>>>>>>> 99d1cee22340b1ba77b2840d4a71af9149640525
>>>>>>> 0eba93a8f5ac831334fae188f6ff594e4bf90797
		end
end
