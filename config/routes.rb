Rails.application.routes.draw do
  get 'documentals/index'
  post 'documentals/create'
  get 'documentals/new'
  get 'series/index'
  post 'series/create'
  get 'series/new'
  get 'movies/index'
  post 'movies/create'
  get 'movies/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "movies#index"
end
