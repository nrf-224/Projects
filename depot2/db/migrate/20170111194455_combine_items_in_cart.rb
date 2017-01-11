class CombineItemsInCart < ActiveRecord::Migration[5.0]
  def up #описываем действия, выполняемые при миграции
    Cart.all.each do |cart| #выполняем действия, описанные ниже, для каждого экземпляра сущности Cart
      sums = cart.line_items.group(:product_id).sum(:quantity) #определяем локальную переменную sums, в которую передаём все элементы таблицы line_items
      #эти элементы сгруппированы по product_id и их количество просуммировано

      sums.each do |product_id, quantity|  #выполняем действия, описанные ниже, для каждого элемента переменной sums
        if quantity > 1 #если для записи с данным product_id количество больше единицы,
          cart.line_items.where(product_id: product_id).delete_all #то мы удаляем эту запись и все записи с таким product_id
          item = cart.line_items.build(product_id: product_id) #а после этого создаём новую запись с теми же атрибутами
          item.quantity = quantity #но в поле quantity передаём посчитанное количество
          item.save! #сохраняем результат выполнения данной процедуры
        end #закрытие цикла if
      end #закрытие цикла each do для переменной sums
    end #закрытие цикла each do для всех корзин в интернет-магазине
  end #закрытие описания дейстий, выполняемых при миграции

  def down #описываем действия, выполняемые при откате миграции

    LineItem.where("quantity>1").each do |line_item| #выполняем данное действие для каждой записи таблицы line_items, для которой значение поля quantity больше 1
      line_item.quantity.times do #выполняем нижеследующий код количество раз, равное значению переменной quantity
        LineItem.create( #создаём запись в таблице line_items с параметрами, указанными ниже
          cart_id: line_item.cart_id,
          product_id: line_item.product_id,
          quantity: 1
        )
      end #закрытие цикла times do для каждой из строк таблицы line_items

      line_item.destroy #удаляем исходную запись таблицы line_items, у которой значение поля quantity больше 1
    end #закрытие описания действий, выполняемых для записей таблицы line_items, у которых значение поля quantity больше 1
  end #закрытие описания дейстий, выполняемых при откате миграции миграции
end #закрытие миграции
