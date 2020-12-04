class ComprarsController < ApplicationController
  def new
		@comprar = Comprar.new
    @pasaje = Pasaje.new
    @comprars = Comprar.all
	end
end
