class PasajesController < ApplicationController
  def new
    @pasajes = Pasaje.all
    @pasaje = Pasaje.new
  end
end
