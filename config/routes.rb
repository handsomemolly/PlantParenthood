Rails.application.routes.draw do
  # resources :cities
  root "users#new"
  post "/" => "users#create"
  get "/home" => "users#show", as: "home"
  
  # resources :bookings
  resources :listings
  resources :notes, only: [:new, :create]
  resources :user_plants, only: [:new, :create]
  resources :users

  get "/login" =>  "sessions#new", as: "login"
  post "/login" => "sessions#create"
  delete "logout", to: "sessions#destroy", as: "log_out"

  post "/listing/:id/book", to: "listings#book", as: "book_listing"
end
