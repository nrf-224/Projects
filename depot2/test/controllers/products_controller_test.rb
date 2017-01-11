require 'test_helper'
#в данном файле хранятся функциональные тесты для контроллера products. они выполняются при помощи команды rails test
#данные тесты, в отличие от юнит-тестов rspec, проверяют не отдельные методы, а работоспособность целых функций сайта, как то: показ продуктов, добавление продуктов и т.д.

class ProductsControllerTest < ActionDispatch::IntegrationTest #набор тестов для контроллера Products наследуется из класса integrationTest в модуле ActionDispatch
  setup do #открытие метода setup, предназначенного для первичной настройки данных для интеграционного тестирования
    @product = products(:one) #определяем переменную класса @product и передаём ей первый экземпляр сущности Product
    @update = { #определяем переменную класса @update и передаём в неё хеш данных, которые предназначены для заполнения полей при тестах
      title: 'Lorem Ipsum', #передаём тестовое значение для заголовка
      description: 'Wibbles are fun!', #передаём тестовое значение для описания
      image_url: 'lorem.jpg', #передаём тестовое значение для названия изображения
      price: 19.95 #передаём тестовое значение для цены
      }
  end #закрытие метода setup

  test "should get index" do #определяем тест с названием should get index, который проверяет, доступна ли ссылка на список продуктов
    get products_url #get-запрос к index.html.erb в папке app/views/products
    assert_response :success #ожидаемый результат - get-запрос обработан и получен ответ в виде веб-страницы
  end #закрытие описания теста

  test "should get new" do #определяем тест с названием should get new, который возвращает ссылку на страницу с созданием нового продукта
    get new_product_url #get-запрос к new.html.erb
    assert_response :success #ожидаемый результат - get-запрос обработан и получен ответ в виде веб-страницы
  end #закрытие описания теста

  test "should create product" do #определяем тест с названием should create product, который проверяет функциональность, позволяющую создавать новые продукты
    assert_difference('Product.count') do #метод assert_difference проверяет, что количество продуктов увеличилось после действий, описанных ниже
      post products_url, params: { product: @update } #отправляем post-запрос к products_url с параметрами, описанными в переменной класса @update
    end #закрытие описания параметров метода assert_difference

    assert_redirected_to product_url(Product.last) #проверка, что после выполнения метода assert_difference происходит перенаправление на страницу только что созданного продукта
  end #закрытие описания теста

  test "should show product" do #определяем тест с названием should show product, который проверяет показ отдельного продукта
    get product_url(@product) #get-запрос к странице show.html.erb, соответствующей конкретному продукту
    assert_response :success #ожидаемый результат - get-запрос обработан и получен ответ в виде веб-страницы
  end #закрытие описания теста

  test "should get edit" do #определяем тест с названием should get edit, который проверяет переход в раздел продукта edit
    get edit_product_url(@product) #get-запрос к странице edit.html.erb, соответствующей конкретному продукту
    assert_response :success #ожидаемый результат - get-запрос обработан и получен ответ в виде веб-страницы
  end #закрытие описания теста

  test "should update product" do #определяем тест с названием should update product, который проверяет возможность обновить данные о продукте
    patch product_url(@product), params: { product: @update } #метод patch пытается пропатчить страницу edit.html.erb, соответствующей конкретному продукту при помощи данных из переменной класса @update
    assert_redirected_to product_url(@product) #проверка, что после выполнения патчинга происходит перенаправление на страницу show.html.erb, соответствующую конкретному продукту
  end #закрытие описания теста

  test "can't delete product in cart" do #определяем тест с названием can't delete product in cart, который проверяет невозможность удаления продукта из корзины
    assert_difference('Product.count', 0) do #метод assert_difference проверяет, что количество продуктов стало равно нулю после действий, описанных ниже
      delete product_url(products(:two)) #удаление продукта
    end #закрытие описания параметров метода assert_difference

    assert_redirected_to products_url #проверка, что после выполнения метода assert_difference происходит перенаправление на страницу index.html.erb
  end #закрытие описания теста

  test "should destroy product" do #определяем тест с названием should destroy product, который проверяет возможность удаления продутка
    assert_difference('Product.count', -1) do #метод assert_difference проверяет, что количество продуктов уменьшилось на единицу после действий, описанных ниже
      delete product_url(@product) #удаление продукта, соответствующего первому экземпляру сущности Product
    end #закрытие описания параметров метода assert_difference

    assert_redirected_to products_url #проверка, что после выполнения метода assert_difference происходит перенаправление на страницу index.html.erb
  end #закрытие описания теста


end #закрытие набора тестов для контроллера Products
