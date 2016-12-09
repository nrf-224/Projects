# encoding: cp866

def get_password   #определяем процедуру с названием "get_password"
print "Type password:\n" #введите пароль
gets.chomp   # команда gets получает ввод данных с клавиатуры, метод chomp убирает ввод Enter
end      #окончание процедуры "get_password"

xx = get_password  #переменная забирает значение из процедуры

puts "Был введён пароль #{xx}"  #вывод на экран пароля