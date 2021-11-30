Rails.application.routes.draw do
  get 'join_table_item_cart/destroy'
  resources :items
  resources :home
  root to: 'home#index'
  devise_for :users
  resources :cart
  resources :join_table_item_cart

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
