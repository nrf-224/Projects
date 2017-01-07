Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  get 'store/index'
  
  root to: 'store#index', as: 'store' #указываем директорию store#index как корневую

  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
