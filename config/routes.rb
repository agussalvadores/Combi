Rails.application.routes.draw do
   devise_for :users, controllers: {
        sessions: 'users/sessions' , registrations: 'users/registrations' , passwords: 'users/passwords',
      }

  
  resources :users
  root to: "home#index"
  get 'home/index'
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
 
  end
 
  
