class ViajesController < ApplicationController
   before_action :set_viaje, only: [:show, :edit, :update, :destroy]
   def index
    @viajes = Viaje.all
   end

   def results
     @viajes = Viaje.where(origen: params[:origen],destino: params[:destino],fecha_salida: params[:fecha_salida])
     if Viaje.where(origen: params[:origen],destino: params[:destino],fecha_salida: params[:fecha_salida]).empty?
       redirect_to viajes_buscador_path, notice:"No se encontraron viajes"
     end
   end
   def buscador
 		@viajes = Viaje.all
    @viaje=Viaje.new
 	end
  def new
    @viaje =Viaje.new
  end

  def create
    @viaje =Viaje.create(viaje_parametros)
    if @viaje.save
      redirect_to viajes_path, notice:"Viaje creado correctamente"
    else
      render :new
    end
  end

  def edit
    @viaje = Viaje.find(params[:id])
  end

  def update
    @viaje = Viaje.find(params[:id])
    if @viaje.update(viaje_parametros)
      redirect_to viajes_path ,notice:"Viaje actualizado correctamente"
    else
      render :edit
    end
  end

  def delete
    @viaje = Viaje.find(params[:id])
    @viaje.destroy
    redirect_to viajes_path, notice: "Viaje eliminado correctamente"
  end
   private
    def set_viaje
      @viaje = Viaje.find(params[:id])
    end

  private
    def viaje_parametros
      params.require(:viaje).permit(:origen, :destino, :hor_salida, :hor_llegada, :precio, :cant_pasajes, :combi_id, :user_id, :fecha_salida, :fecha_llegada)
    end

end
