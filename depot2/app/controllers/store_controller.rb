class StoreController < ApplicationController
  def index
    @products = Product.order(:title) #определяем переменную класса @products, в которую передаём все экземпляры сущности Product, отсортированные по значению поля title
  end
end
