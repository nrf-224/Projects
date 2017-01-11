class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy #данная запись означает, что экземпляр сущности Cart может быть связан с несколькими экземплярами сущности LineItem
  #dependent: :destroy означает, что если мы удалим экземпляр сущности Cart, то так же будут удалены все связанные с ним экземпляры сущности LineItem

    def add_product(product) #определяем колбэк add_product с переменной метода product. данный метод проверяет, присутствует ли добавляемый товар в корзине
    #если товар присутствует, то количество данного товара увеличивается на единицу
      current_item = line_items.find_by(product_id: product.id) #определяем локальную переменную current_item и присваиваем ей значение из таблицы line_items, найденное по id продукта

      if current_item #если данный продукт уже присутствует в таблице line_items,
        current_item.quantity += 1 #то его количество (поле quantinty таблицы line_itmes) увеличивается на единицу
      else #если он ещё не присутствует в таблице line_items,
        current_item = line_items.build(product_id: product.id) #то он туда добавляется в качестве новой записи
      end #закрытие цикла if

      current_item #вызов переменной current_item, так как функционал по заполнению корзины переехал сюда целиком из метода create контроллера carts_controller.rb
    end #закрытие метода add_product

    def total_price
      line_items.to_a.sum { |item| item.total_price }
    end
end #закрытие описания валидаций и колбэков модели Cart
