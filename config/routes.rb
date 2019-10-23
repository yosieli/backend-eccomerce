Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :favorites

  get '/allItems', to: "all_items#index"

  get '/cartItems/:id', to: "carts#myCart"
  post '/addToCart/:id/:itemId', to: "carts#create"
  delete '/cartItems/:id/:itemId', to: "carts#destroy"

  get '/favoriteItems/:id', to: "favorites#myFavorite"
  post '/addToFavorites/:id/:itemId', to: "favorites#create"
  delete '/favoriteItems/:id/:itemId', to: "favorites#destroy"

  delete '/cartItems/:id',to: "carts#destroyAll"



  post '/login', to: 'users#authenticate'
  post '/signup', to: 'users#create'


end
