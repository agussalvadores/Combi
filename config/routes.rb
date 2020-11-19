Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:new, :create, :show,:edit,:delete]

  root to: "home#index"

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
  
 
 
  end
 
  
