Rails.application.routes.draw do

  get '/auth/:provider/callback' => 'sessions#oauth_login'

  resources :users, only: [:create, :show] do
    resources :tasting_notes
  end

  resources :wines do
    collection do
      get 'rated'
    end
  end

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
