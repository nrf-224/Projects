require 'test_helper'
#в данном файле хранятся функциональные тесты для контроллера store. они выполняются при помощи команды rails test

class StoreControllerTest < ActionDispatch::IntegrationTest #набор тестов для контроллера Store наследуется из класса integrationTest в модуле ActionDispatch
  test "should get index" do #определяем тест с названием should get index, который проверяет, доступна ли ссылка на страницу store/index
    #данный тест имеет именно такие параметры потому, что он берёт для тестирования данные из файла app/test/fixtures/products.yml
    get store_index_url #get-запрос к index.html.erb в папке app/views/store
    assert_response :success #ожидаемый результат - get-запрос обработан и получен ответ в виде веб-страницы
    assert_select '#columns #side a', minimum: 4 #данный экшн assert_select ищет в сгенерированной html-странице элементы с id columns и side, а так же ссылки
    #ожидаемый результат - будет найдено минимум 4 таких элемента
    assert_select '#main .entry', 3  #данный экшн assert_select ищет в сгенерированной html-странице элементы с id main и классом entry
    #ожиждаемый результат - будет найдено ровно 3 элемента с классом .entry
    assert_select 'h3', 'Programming Ruby 1.9' #данный экшн assert_select ищет в сгенерированной html-странице элементы с тегом h3
    #ожиждаемый результат - будет найдена строка Programming Ruby 1.9, заключённая в теги h3
    assert_select '.price', /\$[,\d]+\.\d\d/ #данный экшн assert_select ищет в сгенерированной html-странице элементы с классом .price
    #и проверяет их по значениям регулярного выражения между слэшей
    #ожиждаемый результат - будет найдена цена именно в том формате, который описан в регулярном выражении
  end #закрытие описания теста

end #закрытие набора тестов для контроллера Store
