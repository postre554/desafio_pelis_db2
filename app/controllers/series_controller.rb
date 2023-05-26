class SeriesController < ApplicationController

  def index
    @series = Serie.all
  end
  
  def create
    @serie = Serie.new(serie_params) #no sirve usar secuencia completa
    if @serie.save
      redirect_to '/series/index/', notice: 'Serie creada exitosamente.!'
    else
      redirect_to '/series/new/', notice: 'Intentalo nuevamente'
    end
  end

  def new
    @serie = Serie.new
  end

  private

  def serie_params
    params.require(:serie).permit(:name, :synopsis, :director)
  end

end