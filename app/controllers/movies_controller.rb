class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
  
  def create
    @movie = Movie.new(movie_params) #no sirve usar secuencia completa
    if @movie.save
      redirect_to '/movies/index/', notice: 'Película creada exitosamente.!'
    else
      redirect_to '/movies/new/', notice: 'Intentalo nuevamente'
    end
  end

  def new
    @movie = Movie.new
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :synopsis, :director)
  end

end

