require 'test_helper'
#в этом файле хранятся юнит-тесты для методов модели Product. юнит-тестирование - тестирование отдельных методов программы

class ProductTest < ActiveSupport::TestCase #сгенерированный автоматически ProductTest, который наследуется от класса TestCase из модуля ActiveSupport
  #данный тест изначально наслетуется от фреймворка MiniTest, который поставляется вместе с Ruby
  #данный класс описывает проверки модели из файла app/models/product.rb

  fixtures :products #добавляем в тесты класса ProductTest тестовые данные из файла app/test/fixtures/products.yml
  #зачастую, указывать специально на тестовые данные необязательно, так как тесты Rails по умолчанию загружают их перед началом тестирования

  # test "the truth" do
  #   assert true
  # end

  test "product attributes must not be empty" do #создаём тест с названием product attributes must not be empty. данный тест проверяет валидации в файле app/models/product.rb
    product = Product.new #определяем локальную переменную product как новый экземпляр сущности Product. не передаём в переменную никаких параметров, она пустая
    assert product.invalid? #определяем метод assert с указанием, что мы ожидаем, что данный пустой метод не будет пропущен нашими валидаторами
    assert product.errors[:title].any? #определяем метод assert с указанием, что мы ожидаем ошибки при заполнении поля :title
    assert product.errors[:description].any? #определяем метод assert с указанием, что мы ожидаем ошибки при заполнении поля :description
    assert product.errors[:price].any? #определяем метод assert с указанием, что мы ожидаем ошибки при заполнении поля :price
    assert product.errors[:image_url].any? #определяем метод assert с указанием, что мы ожидаем ошибки при заполнении поля :image_url
  end #закрытие описания теста

  test "product price must be positive" do #данный тест проверяет валидатор, который пропускает цену только в том случае, если она больше или равна 0.01
    #тест имеет три кейса для проверки: цена -1, цена 0, цена 1. при желании, данный тест можно разбить на три отдельных теста, по тесту в каждом проверяемом случае
    #при этом в каждом тесте придётся определять локальную переменную product = Product.new и передавать в неё параметры для тестирования. если параметры не передать, тест не пройдёт
    product = Product.new(title: "My Book Title", description: "yyy", image_url: "zzz.jpg") #определяем локальную переменную product как новый экземпляр сущности Product
    #передаём в переменную параметры, указанные в скобках
    product.price = -1 #первый тестовый случай. передаём цену в переменную product, равную -1
    assert product.invalid? #ожидаем, что валидатор признает данную цену неправильной
    assert_equal ["must be greater than or equal to 0.01"], product.errors[:price] #ожидаем, что валдидатор вернёт в хеш errors значение must be greater than or equal to 0.01
    product.price = 0 #второй тестовый случай. передаём цену в переменную product, равную 0
    assert product.invalid? #ожидаем, что валидатор признает данную цену неправильной
    assert_equal ["must be greater than or equal to 0.01"], product.errors[:price] #ожидаем, что валдидатор вернёт в хеш errors значение must be greater than or equal to 0.01
    product.price = 1 #третий тестовый случай. передаём цену в переменную product, равную 1
    assert product.valid? #ожидаем, что валидатор признает данную цену правильной
  end #закрытие описания теста


  def new_product(image_url) #создаём метод new_product с параметром image_url
    Product.new(title: "My Book Title", description: "yyy", price: 1, image_url: image_url) #создаём экземпляр сущности Product и передаём в него параметры в виде хеша
    #в качестве значения image_url передаётся параметр метода
  end #зарытие метода

  test "image url" do #данный тест проверяет два случая: когда указан корректный url картинки, и когда указан некорректный. по сути, это девять тестов в одном, разбитые на две категории
    ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg http://a.b.c/x/y/z/fred.gif } #массив значений, соответствующих корректным url. передан в переменную ok. первая категория

    bad = %w{ fred.doc fred.gif/more fred.gif.more } #массив значений, соответствующий некорректным url. передан в переменную bad. вторая категория

    ok.each do |name| #выполняем код, указанный ниже для каждого элемента массива из переменной ok
      assert new_product(name).valid?, "#{name} shouldn't be invalid" #ожидаем, что image_url корректен. в кавычках указан формат сообщения, которое отобразится при провале теста
    end #закрытие цикла each

    bad.each do |name| #выполняем код, указанный ниже для каждого элемента массива из переменной bad
      assert new_product(name).invalid?, "#{name} shouldn't be valid" #ожидаем, что image_url некорректен. в кавычках указан формат сообщения, которое отобразится при провале теста
    end #закрытие цикла each
  end #закрытие описания теста

  test "product is not valid without a unique title" do #данный тест проверяет валидатор, который разрешает только уникальные имена для экземпляров сущности Product
    product = Product.new(title: products(:ruby).title, description: "yyy", price: 1, image_url: "fred.gif") #создаём экземпляр сущности Product и передаём в него параметры в виде хеша
    #значение, соответствующее ключу title берётся из файла app/test/fixtures/products.yml, набор данных :ruby. то есть, название книги берётся из фикстуры ruby
    assert product.invalid? #ожидаем, что валидатор признает данные об этом продукте неправильными
    assert_equal ["has already been taken"], product.errors[:title] #ожидаем, что валдидатор вернёт в хеш errors значение has already been taken
  end #закрытие описания теста

  test "product is not valid without a unique title - i18n" do #данный тест проверяет валидатор, который разрешает только уникальные имена для экземпляров сущности Product
    #при этом сообщение об ошибке генерируется при помощи модуля интернализации i18n
    product = Product.new(title: products(:ruby).title, description: "yyy", price: 1, image_url: "fred.gif") #создаём экземпляр сущности Product и передаём в него параметры в виде хеша
    #значение, соответствующее ключу title берётся из файла app/test/fixtures/products.yml, набор данных :ruby. то есть, название книги берётся из фикстуры ruby
    assert product.invalid? #ожидаем, что валидатор признает данные об этом продукте неправильными
    assert_equal [I18n.translate('errors.messages.taken')], product.errors[:title] #ожидаем, что валдидатор вернёт в хеш errors значение переменной errors.messages.taken,
    #переведённое при помощи гема i18n
  end #закрытие описания теста

end #закрытие класса ProductTest