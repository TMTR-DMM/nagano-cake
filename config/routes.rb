Rails.application.routes.draw do
 devise_for :admins, controllers: {
  sessions: 'admins/sessions'
}
  get 'search' => 'searches#search'
  namespace :admin do
   resources :categories, only: [:index, :create, :edit, :update]
   resources :items, except: [:destroy]
   resources :orders, only: [:index, :show, :update]
   resources :customers, only: [:index, :show, :edit, :update]
   resources :order_items, only: [:update]
  end
  namespace :admin do
    get 'homes/top'
  end
  devise_for :customers
  namespace :customer do
    resource :customers, only: [:show, :edit, :update]
    get 'customers/exit_check' => 'customers#exit_check'
    patch 'customers/exit' => 'customers#exit'
  end
  scope module: :customer do
    root 'homes#top'
    get 'homes/about' => 'homes#about' 
    get 'orders/check' => 'orders#check'
    get 'orders/thank' => 'orders#thank'
    resources :cart_items, only: [:index, :create, :update, :destroy]
    delete 'cart_items' => 'cart_items#all_destroy'
    resources :deliveries, only: [:index, :create, :destroy, :edit, :update]
    resources :items, only: [:index, :show]
    resources :orders, only: [:new, :create, :index, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

