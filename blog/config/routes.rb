Rails.application.routes.draw do
  get '/' => 'home#index'

  resource :contacts, only: [:new, :create] #создаём маршрут к странице contacts и указываем, что будем использовать только REST-методы new (get) и create (post)
  resources :articles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
