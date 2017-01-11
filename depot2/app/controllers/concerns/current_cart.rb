module CurrentCart #данный модуль создаётся для сохранения параметра cart_id в течение сессии

private #метод, описанный ниже, будет приватным, то есть доступным только при вызове из метода

  def set_cart #
    @cart = Cart.find(session[:cart_id]) #определяем переменную класса @cart и передаём в неё экземпляр сущности Cart, найденный по параметру cart_id, который фигурирует в текущей сессии
    #:cart_id берётся из объекта session, а затем происходит попытка найти корзину, согласно значению :cart_id
  rescue ActiveRecord::RecordNotFound #
    @cart = Cart.create #
    session[:cart_id] = @cart.id #
  end #
end #