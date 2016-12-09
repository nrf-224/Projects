# encoding: cp866

def get_password
print "Type password:\n" #введите пароль
gets.chomp + "zzz"  #прибавляет к строке символы zzz
end        #окончание процедуры

xx = get_password #переменная забирает значение из метода

puts "Был введён пароль #{xx}"