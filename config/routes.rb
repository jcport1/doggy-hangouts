Rails.application.routes.draw do


  #sets my homepage 
  get '/' => 'sessions#welcome'
  get '/signup' => 'users#new'
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :requests
  resources :listings
  resources :pets
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
