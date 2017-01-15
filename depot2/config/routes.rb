Rails.application.routes.draw do

  resources :users
  resources :orders
  resources :line_items
  resources :carts
  root 'store#index', as: 'store_index' #указываем маршрут к корневому разделу сайта. в данном случае это store/index. этот раздел будет показан сразу при открытии сайта
  #шаблон, отрисовывающий данную страницу, находится по адресу app/views/store/index.html.erb

  resources :products do
    get :who_bought, on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
