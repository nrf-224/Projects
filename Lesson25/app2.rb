#encoding: cp866
require 'sqlite3'                                     #вызов гема sqlite3
db = SQLite3::Database.new 'test.sqlite'              #технически: определение переменной db и присвоение ей экземпляра класса Database модуля SQLite3 с параметром test.sqlite
	                                              #концептуально: передача в переменную db базы test.sqlite для дальнейших операций

db.execute "select * from cars" do |car|              #выполнение sql-запроса к базе test.sqlite и определение цикла do со внутренней переменной car
puts car                                              #вывод на экрана значения переменной car. в эту переменную будет передана строка из таблицы test
puts                                                  #строка-разделитель
end                                                   #закрытие цикла do

db.close                                              #закрытие базы данных