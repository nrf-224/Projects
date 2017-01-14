class OrdersController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:new, :create] #фильтр before_action позволяет настроить типы действий, применимых к определённому методу
  #в данном случае мы позволяем использовать метод set_cart только в методах new и create данного контроллера
  before_action :ensure_cart_isnt_empty, only: :new #фильтр before_action позволяет настроить типы действий, применимых к определённому методу
  #в данном случае мы позволяем использовать метод ensure_cart_isnt_empty только в методе new данного контроллера
  before_action :set_order, only: [:show, :edit, :update, :destroy] #фильтр before_action позволяет настроить типы действий, применимых к определённому методу
  #в данном случае мы позволяем использовать метод set_order только в методах show, edit, update, destroy данного контроллера

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    @order.add_line_items_from_cart(@cart)

    respond_to do |format|
      if @order.save
        Cart.destroy(session[:cart_id])
        session[:cart_id] = nil
        OrderMailer.received(@order).deliver_later
        format.html { redirect_to store_index_url, notice: 'Thank you for your order.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:name, :address, :email, :pay_type)
    end

   def ensure_cart_isnt_empty #определяем метод ensure_cart_is_empty, который будет проверять наличие товаров в корзине
    #если товары отсутствуют, то будет происходить перенаправление на страницуindex.html.erb из папки app/views/store и выводиться сообщение "Your cart is empty"
     if @cart.line_items.empty? #открываем цикл if. оператор @cart.line_items.empty? проверяет, есть ли в текущем экземпляре сущности Cart какие-либо записи в аттрибуте line_items
      #если записи отсутствуют (оператор возвращает true, то происходит действие, описанное в строке ниже)
       redirect_to store_index_url, notice: 'Your cart is empty' #оператор redirect_to перенаправляет на страницуindex.html.erb из папки app/views/store
       #так же при этом появляется flash-уведомление "Your cart is empty"
     end #закрытие цикла if
   end #закрытие описания метода ensure_cart_isnt_empty
end
