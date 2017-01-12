class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_cart #метод rescue_from в данном случае перехватывает сообщения об ошибке Record Not Found из ActiveRecord
  #после перехвата исполняется метод invalid_cart, описанный в данном контроллере в блоке private

  # GET /carts
  # GET /carts.json
  def index
    @carts = Cart.all
  end

  # GET /carts/1
  # GET /carts/1.json
  def show
  end

  # GET /carts/new
  def new
    @cart = Cart.new
  end

  # GET /carts/1/edit
  def edit
  end

  # POST /carts
  # POST /carts.json
  def create
    @cart = Cart.new(cart_params)

    respond_to do |format|
      if @cart.save
        format.html { redirect_to @cart, notice: 'Cart was successfully created.' }
        format.json { render :show, status: :created, location: @cart }
      else
        format.html { render :new }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carts/1
  # PATCH/PUT /carts/1.json
  def update
    respond_to do |format|
      if @cart.update(cart_params)
        format.html { redirect_to @cart, notice: 'Cart was successfully updated.' }
        format.json { render :show, status: :ok, location: @cart }
      else
        format.html { render :edit }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carts/1
  # DELETE /carts/1.json
  def destroy
    @cart.destroy if @cart.id == session[:cart_id] #удаляем корзину только в случае, если id корзины равен id корзины текущей сессии
    session[:cart_id] = nil #после удаления корзины удаляем значение id корзины текущей сессии
    respond_to do |format| #выводим на экран сообщение об удалении
      format.html { redirect_to store_index_url } #перенаправляем на главную страницу магазина и информируем, что корзина пуста
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      @cart = Cart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cart_params
      params.fetch(:cart, {})
    end

    def invalid_cart
      logger.error "Attempt to access invalid cart #{params[:id]}" #записываем в лог сообщение о попытке доступа к корзине с неверным id. записываем, к какому id была попытка доступа
      redirect_to store_index_url, notice: 'Invalid cart' #перенаправляем на страницу index.html.erb из папки app/views/store и выводим всплывающее сообщение 'Imvalid cart'
    end
end
