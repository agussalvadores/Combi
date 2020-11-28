class Viaje < ApplicationRecord
	before_action :set_viaje, only: [:show, :edit, :update, :destroy]

  def index
    @viajes = Viaje.all
  end

  
  def show
  end

 
  def new
    @viaje = Viaje.new
  end

  # GET /travels/1/edit
  def edit
  end

  # POST /travels
  # POST /travels.json
def create
    @viaje = Viaje.new(viaje_params)

    respond_to do |format|
      if @viaje.save
        format.html { redirect_to @viaje, notice: 'Travel was successfully created.' }

      else
        format.html { render :new }

      end
    end
  end



  def update
    respond_to do |format|
      if @viaje.update(viaje_params)
        format.html { redirect_to @viaje, notice: 'Travel was successfully updated.' }

      else
        format.html { render :edit }

      end
    end
  end



  def destroy
    @viaje.destroy
    respond_to do |format|
      format.html { redirect_to viajes_url, notice: 'Travel was successfully destroyed.' }

    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel
      @viaje = Viaje.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def viaje_params
      params.require(:viaje).permit(:dia, :hora, :combi_id, :way_id, :state_id)
    end
end
