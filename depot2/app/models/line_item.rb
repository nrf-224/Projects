#в данной модели указана, что сущность Line_item принадлежит сущностям Product и Cart. смысл данной сущности - сохранение содержимого корзины
class LineItem < ApplicationRecord
  #ссылки belongs_to ниже означают, что столбцы в таблице line_items являются дочерними по отношению к столбцам таблиц products и carts
  #запись в таблице line_items не может существовать, если не существует соответствующих записей в таблицах products и carts
  belongs_to :product
  belongs_to :cart

  def total_price
    product.price * quantity
  end
end
