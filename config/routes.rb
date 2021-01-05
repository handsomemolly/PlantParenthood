Rails.application.routes.draw do
  resources :bookings
  resources :listings
  resources :notes
  resources :user_plants, only: [:new, :create]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
