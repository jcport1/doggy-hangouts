Rails.application.routes.draw do


  resources :locations
  #sets my homepage 
  get '/' => 'sessions#welcome'
  get '/signup' => 'users#new'
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/auth/:provider/callback' => 'sessions#omniauth'

  resources :users do 
    resources :listings, only: [:index]
  end

  resources :locations 
  resources :listings do 
    resources :events, only: [:new, :index]
  end
  resources :events
  resources :pets
  resources :users do 
    resources :events, only: [:show]
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
