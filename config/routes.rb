Rails.application.routes.draw do


  resources :locations
  #sets my homepage 
  get '/' => 'sessions#welcome'
  get '/signup' => 'users#new'
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :users do 
    resources :listings, only: [:index]
  end

  resources :locations 
  resources :listings do 
    resources :requests, only: [:new, :create, :index]
  end
  resources :requests
  resources :pets
  resources :users do 
    resources :requests, only: [:show]
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
