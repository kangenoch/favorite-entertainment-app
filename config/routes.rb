Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/users" => "users#index"
  post "/users" => "users#create"
  get "/users/:id" => "users#show"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"

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

  get "/sessions", to: "sessions#create"

  resource :users
  resource :items
  resource :favorites
  resource :sessions
end
