class Product < ApplicationRecord #файл модели сущности Product
  validates :title, :description, :image_url, presence: true #валидация данных, передаваемых в базу данных. Критерии валидации - все поля заполнены
  validates :price, numericality: {greater_than_or_equal_to: 0.01} #валидация цены, передаваемой в базу данных. Критерий валидации - цена больше или равна 0.01
  validates :title, uniqueness: true #валидация того, что параметр title более не встречается в базе данных
  validates :image_url, allow_blank: true, format: { with: %r{\.(gif|jpg|png)\Z}i, message: 'URL должен указывать на изображение формата GIF, JPG или PNG.' }

  def self.latest
  Product.order(:updated_at).last
  end
  
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item

  private
  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'существуют товарные позиции')
      return false
    end
  end
end
