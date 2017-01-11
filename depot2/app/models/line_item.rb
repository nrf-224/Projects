#в данной модели указана, что сущность Line_item принадлежит сущностям Product и Cart. смысл данной сущности - сохранение содержимого корзины
class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
end
