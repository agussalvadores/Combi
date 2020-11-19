Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:new, :create, :show,:edit,:delete]

  root to: "home#index"

  resources :chofer  
 
 
  end
 
  
