Rails.application.routes.draw do
  resources :locations
  resources :wineries
  resources :tasting_notes
  resources :wines
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
