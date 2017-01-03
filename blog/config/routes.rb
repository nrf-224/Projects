Rails.application.routes.draw do

  devise_for :users
  root to: "home#index"

  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'

  #get 'contacts' => 'contacts#new'
  #resource :contacts, only: [:create] 
  resource :contacts, only: [:new, :create], path_names: { :new => '' } #создаём маршрут к странице contacts и указываем, что будем использовать только REST-методы new (get) и create (post), а так же путь к new
  resources :articles do
    resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
