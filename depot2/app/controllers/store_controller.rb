class StoreController < ApplicationController
  include CurrentCart #добавляем модуль CurrentCart из папки app\controllers\concerns
  before_action :set_cart #вызываем текущее значение переменной set_cart из файла app\controllers\carts_controller.rb
  def index
    @products = Product.order(:title) #определяем переменную класса @products, в которую передаём все экземпляры сущности Product, отсортированные по значению поля title
  end
end
