Rails.application.routes.draw do
  resources :vacations
  resources :airlines
  resources :hotels
  resources :clients
  resources :agents
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
