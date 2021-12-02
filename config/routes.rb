Rails.application.routes.draw do
  resources :orders, only: [:new, :create]
  get 'join_table_item_cart/destroy'
  resources :items
  resources :home
  root to: 'home#index'
  devise_for :users
  resources :user, as: "profile"
  resources :cart

  resources :items do
    resources :join_table_item_cart
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
