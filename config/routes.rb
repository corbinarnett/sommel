Rails.application.routes.draw do

  resources :producers
  root "sessions#index"
  
  #creating a new session, model object(user) has already been created
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  #creating a new model opject so we send the route to the users contoller
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  resources :tasting_notes
  resources :wines
  resources :users
end
