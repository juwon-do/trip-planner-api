Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  ### USER
  post "/users" => "users#create"
  get  "/users/:id" => "users#show"
  ### Session
  post "/sessions" => "sessions#create"

  ###TRIP
  get "/trips" => "trips#index"
  post "/trips" => "trips#create"

  ###Place
  get "/places" => "places#index"
  get "/places/:id" => "places#show"
  post "/places" => "places#create"
end
