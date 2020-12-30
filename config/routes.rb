Rails.application.routes.draw do
devise_for :customers
  namespace :customer do
    resource :customers, only: [:show, :edit, :update]
    get 'customers/exit_check' => 'customers#exit_check'
    patch 'customers/exit' => 'customers#exit'
  end
  scope module: :customer do
    root 'homes#top'
    get 'homes/about' => 'homes#about' 
    resources :cart_items, only: [:index, :create, :update, :destroy]
    delete 'cart_items' => 'cart_items#all_destroy'
    resources :deliveries, only: [:index, :create, :destroy, :edit, :update]
    resources :items, only: [:index, :show]
    resources :orders, only: [:new, :create, :index, :show]
    get 'orders/check' => 'orders#check'
    get 'orders/thank' => 'orders#thank'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
