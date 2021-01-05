Rails.application.routes.draw do
  root "users#new"
  
  resources :bookings
  resources :listings
  resources :notes
  resources :user_plants, only: [:new, :create]
  resources :users


  get "/login" =>  "sessions#new"
  post "/login" => "sessions#create"

  get "/home" => "users#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
