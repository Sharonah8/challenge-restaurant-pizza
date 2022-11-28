Rails.application.routes.draw do
  resources :restaurantpizzas
  resources :pizzas, only: [:index]
  resources :restaurants, only: [:index, :show, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
