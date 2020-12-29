Rails.application.routes.draw do
  get 'orders/new'
  get 'orders/check'
  get 'orders/thank'
  get 'orders/index'
  get 'orders/show'
  get 'items/index'
  get 'items/show'
  get 'deliverlies/index'
  get 'deliverlies/edit'
  get 'cart_items/index'
  get 'customers/show'
  get 'customers/exit_check'
  get 'homes/top'
  get 'homes/about'
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
