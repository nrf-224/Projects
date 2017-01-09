class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price, precision: 8, scale: 2 #поле price, формат - десятичное число, в значимой части 8 цифр, точность - 2 знака после запятой

      t.timestamps
    end
  end
end
