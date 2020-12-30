Rails.application.routes.draw do
root 'homes#top'
get 'home/about' => 'homes#about' 
devise_for :customers
resource :customers, only: [:show, :edit, :update]
get 'customers/exit_check' => 'customers#exit_check'
patch 'customers' => 'customers#exit'
resources :cart_items, only: [:index, :create, :update, :destroy]
delete 'cart_items' => 'cart_items#all_destroy'
resources :deliveries, only: [:index, :create, :destroy, :edit, :update]
resources :items, only: [:index, :show]
resources :orders, only: [:new, :create, :index, :show]
get 'orders/check' => 'orders#check'
get 'orders/thank' => 'orders#thank'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
