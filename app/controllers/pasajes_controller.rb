class PasajesController < ApplicationController
def index
  if current_user.role=="pasajero"
    @pasajes = Pasaje.where(user_id: current_user.id)
  else
    @viajes = Viaje.where(user_id: current_user.id)
  end
end
  def confirmar_reprogramacion
    @viaje= Viaje.find(params[:viaje_id])
    @pasaje= Pasaje.find(params[:id])
  end
  def reprogramar
    @pasaje=Pasaje.find(params[:id])
    @viaje=Viaje.find(@pasaje.viaje_id)
    @viajes=Viaje.all
  end
  def cancelacion
    @pasaje=Pasaje.find(params[:id])
  end
  def comprar
    @viaje=params[:id]
    @pasajes = Pasaje.all
    @pasaje = Pasaje.new
    @insumos =Insumo.where("stock > 0")
  end

  def confirmar_compra
    @pasajes = Pasaje.all
    @pasaje = Pasaje.find(params[:id])
  end

  def new
		@pasaje = Pasaje.new
	end

	def create
		@pasaje = Pasaje.create(pasaje_parametros)
		if @pasaje.save
			redirect_to confirmar_compra_pasaje_path(@pasaje)
		else
			redirect_to viajes_buscador_path, notice: "DNI ERRONEO"
		end
	end
  def show
    @pasaje = Pasaje.find(params[:id])

  end
  private
		def pasaje_parametros
      params.require(:pasaje).permit( :titular, :dni_t, :precio, :nro_t, :v_m_tarjeta, :v_a_tarjeta, :cod_t, :user_id,  :viaje_id,:cantidad,:total,:dni_tarjeta,:nombre_tarjeta,:estado,insumo_ids: [] )
		end
end
