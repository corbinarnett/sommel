Rails.application.routes.draw do

  root "sessions#index"

  resources :locations
  resources :wineries
  resources :tasting_notes
  resources :wines
  resources :users
end
