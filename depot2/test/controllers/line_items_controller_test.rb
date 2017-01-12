require 'test_helper'

class LineItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @line_item = line_items(:one)
  end

  test "should get index" do
    get line_items_url
    assert_response :success
  end

  test "should get new" do
    get new_line_item_url
    assert_response :success
  end

  test "should create line_item" do
    assert_difference('LineItem.count') do #ожидаем изменения количества элементов LineItem
      post line_items_url, params: { product_id: products(:ruby).id } #отправляем post-запрос к line_items_url с параметрами в фигурных скобках
      #product_id берётся из фикстуры ruby файла products.yml
    end #закрытие описания параметров метода assert_difference

    follow_redirect! #после отправки post-запроса происходит редирект на страницу new.html.erb из папки app/views/line_items и тест продолжается уже там

    assert_select 'h2', 'Your Cart' #данный экшн assert_select ищет в сгенерированной html-странице элементы с тегом h2
    #ожидаемый результат - будет найдена строка Your Pragmatic Cart, заключённая в теги h2
    assert_select 'td', '1 ×' #данный экшн assert_select ищет в сгенерированной html-странице элементы с тегом li
    
    assert_select 'td', 'Programming Ruby 1.9' #данный экшн assert_select ищет в сгенерированной html-странице элементы с тегом li
    #ожидаемый результат - будет найдена строка 1 ×, заключённая в теги li. \u00D7 это юникод-символ ×
  end

  test "should show line_item" do
    get line_item_url(@line_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_line_item_url(@line_item)
    assert_response :success
  end

  test "should update line_item" do
    patch line_item_url(@line_item), params: { line_item: { product_id: @line_item.product_id } }
    assert_redirected_to line_item_url(@line_item)
  end

  test "should destroy line_item" do
    assert_difference('LineItem.count', -1) do
      delete line_item_url(@line_item)
    end

    assert_redirected_to line_items_url
  end

  test "should create line_item via ajax" do
    assert_difference('LineItem.count') do
      post line_items_url, params: { product_id: products(:ruby).id },
        xhr: true
    end 

    assert_response :success
    assert_select_jquery :html, '#cart' do
      assert_select 'tr#current_item td', /Programming Ruby 1.9/
    end
  end
end
