Rails.application.routes.draw do

  root "sessions#index"

  get '/auth/:provider/callback' => 'sessions#oauth_login'

  resources :users, only: [:create, :show] do
    resources :tasting_notes
  end

  resources :wines do
    collection do
      get 'rated'
    end
  end

  #creating a new session, model object(user) has already been created
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  #creating a new model opject so we send the route to the users contoller
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  resources :producers
  resources :tasting_notes
  resources :wines
  resources :users
end
