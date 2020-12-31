Rails.application.routes.draw do
 devise_for :admins, skip: :all
  devise_scope :admin do
    get 'admins/sign_in' => 'admins/sessions#new'
    post 'admins/sign_in' => 'admins/sessions#create'
    delete 'admins/sign_out' => 'admins/sessions#destroy'   
  end
  namespace :admin do
    get 'categories/index'
    get 'categories/edit'
  end
  namespace :admin do
    get 'items/index'
    get 'items/show'
    get 'items/new'
    get 'items/edit'
  end
  namespace :admin do
    get 'orders/index'
    get 'orders/show'
  end
  namespace :admin do
    get 'customers/index'
    get 'customers/show'
    get 'customers/edit'
  end
  namespace :admin do
    get 'homes/top'
  end
 devise_for :customers, skip: :all
  devise_scope :customer do
    get 'customers/sign_in' => 'customers/sessions#new',as: 'new_customer_session'
    post 'customers/sign_in' => 'customers/sessions#create'
    delete 'customers/sign_out' => 'customers/sessions#destroy'
    get 'customers/sign_up' => 'customers/registrations#new',as: 'new_customer_registration'
    post 'customers' => 'customers/registrations#create'
    get 'customers/password/new' => 'customers/passwords#new'
  end
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
