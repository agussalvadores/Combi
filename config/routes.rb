Rails.application.routes.draw do
  resources :chofer2s
  devise_for :users
  root to: "home#index"
  get '/chofer', to: 'chofer#index'
end
