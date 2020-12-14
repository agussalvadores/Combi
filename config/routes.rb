Rails.application.routes.draw do

  resources :pasajes do
    member do
      get :comprar
      get :confirmar_compra
      post :confirmar_compra
      get :show
      post :show


    end
  end
  resources :pasajes
  get '/pasajes/show/:id', to: 'pasajes#show', as: 'show_pasaje'

  #get '/pasajes', to: 'pasajes#index'
  #get '/pasajes/new', to: 'pasajes#new'
   devise_for :users, controllers: {
        sessions: 'users/sessions' , registrations: 'users/registrations' , passwords: 'users/passwords',
      }

  get 'pasajes/show/:id', to: 'pasajes#show'
  resources :users
  root to: "viajes#buscador"
  get 'viajes/buscador'

  resources :chofer
  get '/chofer/index', to: 'chofer#index'
  get '/chofer/new', to: 'chofer#new'
  post '/chofer' , to: 'chofer#create'
  get '/chofer/:id', to: 'chofer#show'
  get '/chofer/:id/edit', to: 'chofer#edit'
  put '/chofer/:id', to: 'chofer#update'
  patch '/chofer/:id', to: 'chofer#update'
  delete '/chofer/destroy/:id', to: 'chofer#destroy', as: 'destroy_chofer'
  get '/chofer/show/:id', to: 'chofer#show' , as: 'show_chofer'

  get '/viajes', to: 'viajes#index'
  get '/viajes/results', to: 'viajes#results'
  get '/viajes/buscador', to: 'viajes#buscador'
  get '/viajes/new', to: 'viajes#new'
  post '/viajes', to: 'viajes#create'
  get '/viajes/:id', to: 'viajes#show', as: 'viaje'
  get '/viajes/:id/edit', to: 'viajes#edit', as: 'edit_viaje'
  patch '/viajes/:id', to: 'viajes#update'
  delete '/viajes/:id', to: 'viajes#delete'
  #resources :viajes
  get '/combis', to: 'combis#index'
  get '/combis/new', to: 'combis#new'
  post '/combis', to: 'combis#create'
  get '/combis/:id', to: 'combis#show', as: 'combi'
  get '/combis/:id/edit', to: 'combis#edit', as: 'edit_combi'
  patch '/combis/:id', to: 'combis#update'
  delete '/combis/:id', to: 'combis#delete'
  #resources :combis
  get '/ciudades', to: 'ciudads#index'
  get '/ciudades/new', to: 'ciudads#new'
  post '/ciudades', to: 'ciudads#create'
  get '/ciudades/:id', to: 'ciudads#show', as: 'ciudad'
  get '/ciudades/:id/edit', to: 'ciudads#edit', as: 'edit_ciudad'
  patch '/ciudades/:id', to: 'ciudads#update'
  delete '/ciudades/:id', to: 'ciudads#delete'

  get '/insumos', to: 'insumos#index'
  get '/insumos/new', to: 'insumos#new'
  post '/insumos', to: 'insumos#create'
  get '/insumos/:id', to: 'insumos#show', as: 'insumo'
  get '/insumos/:id/edit', to: 'insumos#edit', as: 'edit_insumo'
  patch '/insumos/:id', to: 'insumos#update'
  delete '/insumos/:id', to: 'insumos#delete'
#resources :insumos
  end
