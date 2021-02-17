Rails.application.routes.draw do
  # resources :airlines
  # resources :hotels
  # resources :clients
  resources :agents

  root to:"agents#login"
  post "/handle_login", to: "agents#handle_login"

  get "/clients", to:"clients#index", as: "clients"
  get "/clients/new", to: "clients#new", as: "new_client"
  post "/clients", to: "clients#create"
  get "/clients/:id", to: "clients#show", as: "client"
  get "/clients/:id/edit", to: "clients#edit", as: "edit_client"
  patch "/clients/:id", to: "clients#update"
  delete "/clients/:id", to: "clients#destroy"

  get "/hotels", to: "hotels#index", as: "hotels"

  get "/airlines", to: "airlines#index", as: "airlines"

  get "/vacations/new", to: "vacations#new", as: "new_vacation"
  post "/vacations", to: "vacations#create"
  get "vacations/:id", to:"vacations#show", as: "vacation"
  get "/vacations/:id/edit", to: "vacations#edit", as: "edit_vacation"
  patch "/vacations/:id", to: "vacations#update"

  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
