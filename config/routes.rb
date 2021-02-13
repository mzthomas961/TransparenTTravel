Rails.application.routes.draw do
  resources :vacations
  # resources :airlines
  # resources :hotels
  # resources :clients
  resources :agents

  get "/clients", to:"clients#index", as: "clients"
  get "/clients/new", to: "clients#new", as: "new_client"
  post "/clients", to: "clients#create"
  get "/clients/:id", to: "clients#show", as: "client"
  get "/clients/:id/edit", to: "clients#edit", as: "edit_client"
  patch "/clients/:id", to: "clients#update"
  delete "/clients/:id", to: "clients#destroy"

  get "/hotels", to: "hotels#index", as: "hotels"

  get "/airlines", to: "airlines#index", as: "airlines"

  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
