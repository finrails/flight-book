Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :flight_books

  # Defines the root path route ("/")
  root "patterns#index"
end
