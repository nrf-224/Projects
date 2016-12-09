#encoding: cp866
#Создание простой базы данных на основе хеш-таблицы
#В базе данных хранится имя и номер телефона
hh = {}
loop do
puts "Введите имя:"
name = gets.to_s.chomp.strip.capitalize
puts "Введите номер телефона"
phone = gets.to_s.chomp
hh[name] = phone
if name == "" then
puts hh.inspect
exit
end
end