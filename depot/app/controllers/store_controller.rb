class StoreController < ApplicationController
  def index
    @products = Product.order(:title) #вызываем все продукты в алфавитном порядке
  end
end
