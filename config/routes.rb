Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/users", to: "users#index"
  get "/users/:id", to: "users#show"
  post "/users", to: "users#create"
  patch "/users/:id", to: "users#update"
  delete "/users/:id", to: "users#destroy"

  get "/items", to: "items#index"
  get "/items/:id", to: "items#show"
  post "/items", to: "items#create"
  patch "/items/:id", to: "items#update"
  delete "/items/:id", to: "items#destroy"

  get "/favorites", to: "favorites#index"
  get "/favorites/:id", to: "favorites#show"
  post "/favorites", to: "favorites#create"
  patch "/favorites/:id", to: "favorites#update"
  delete "/favorites/:id", to: "favorites#destroy"

  resource :users
  resource :items
  resource :favorites
end
