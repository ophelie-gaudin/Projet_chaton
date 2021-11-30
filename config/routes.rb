Rails.application.routes.draw do
  resources :items
  resources :home
  root to: 'home#index'
  devise_for :users
  resources :cart
  # resources :join_table_item_carts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
