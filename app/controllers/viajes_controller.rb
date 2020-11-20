class ViajesController < ApplicationController
   before_action :set_viaje, only: [:show, :edit, :update, :destroy]
   def index
    @viajes = Viaje.all 
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
      @viaje = viaje.find(params[:id])
    end
  
  private
    def viaje_parametros
      params.require(:viaje).permit(:origen, :destino, :hor_salida, :hor_llegada, :precio, :cant_pasajes, :combi, :chofer)
    end

end