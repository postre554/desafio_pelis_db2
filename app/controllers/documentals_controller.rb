class DocumentalsController < ApplicationController
  def index
    @documentals = Documental.all
  end
  
  def create
    @documental = Documental.new(documental_params) #no sirve usar secuencia completa
    if @documental.save
      redirect_to '/documentals/index/', notice: 'Documental creado exitosamente.!'
    else
      redirect_to '/documentals/new/', notice: 'Intentalo nuevamente'
    end
  end

  def new
    @documental = Documental.new
  end

  private

  def documental_params
    params.require(:documental).permit(:name, :synopsis, :director)
  end

end
