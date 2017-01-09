class Product < ApplicationRecord
  #для каждого из критериев добавляется свой валидатор. при этом одни и те же поля могут быть проверены разными валидаторами
  validates :title, :description, :image_url, presence: true #добавляем валидацию, которая происходит при сохранении данных в таблицу Products
  #данная валидация проверяет, что поля title, description и image_url не пусты при нажатии кнопки Create Product
  validates :price, numericality: {greater_than_or_equal_to: 0.01} #данный валидатор проверяет поле price по двум критериям: во-первых, что в поле внесено число (numericality),
  #во-вторых, что это число больше или равно 0.01
  validates :title, uniqueness: true #данный валидатор проверяет, что название, указанное при добавлении продукта, является уникальным
  #валидатор, указанный ниже, проверяет, является ли текст, вставленный в поле image_url действительно изображением. критерии принадлежности к изображениям указаны в фигурных скобках
  #в данном случае в валидаторе опция allow_blank: true, потому что проверка на пустоту запроса была уже выполнена в самом первом валидаторе
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'must be a URL for GIF, JPG or PNG image.'
  }
end
