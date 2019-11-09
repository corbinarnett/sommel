Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }
  
  resources :users, only: [:create, :show] do
    resources :tasting_notes
  end

  
  root "sessions#index"
  
  #creating a new session, model object(user) has already been created
  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # delete '/logout' => 'sessions#destroy'

  # #creating a new model opject so we send the route to the users contoller
  # get '/signup' => 'users#new'
  # post '/signup' => 'users#create'

  resources :producers
  resources :tasting_notes
  resources :wines
  resources :users
end
