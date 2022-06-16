Rails.application.routes.draw do
  resources :flight_books, only: %i[ index new ]
  resources :bookings, only: %i[ new ]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root "flight_books#index"
end
