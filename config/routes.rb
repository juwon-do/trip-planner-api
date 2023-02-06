Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  ### USER
  post "/users" => "users#create"
  ### Session
  post "/sessions" => "sessions#create"

  ###TRIP
  get "/trips" => "trips#index"
  post "/trips" => "trips#create"

  ###Place
  get "/places/:id" => "places#index"
  post "/places" => "places#create"
end
