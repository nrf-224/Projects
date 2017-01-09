class Product < ApplicationRecord
  validates :title, :description, :image_url, presence: true #добавляем валидацию, которая происходит при сохранении данных в таблицу Products
  #данная валидация проверяет, что поля title, description и image_url не пусты при нажатии кнопки Create Product
end
