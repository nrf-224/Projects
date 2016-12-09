# encoding: cp866

print "Сколько гостей к Вам придёт? "
n = gets.to_i

if n < 0
puts "Указано отрицательное количество гостей"
exit
end

if n != 0
puts "Отлично! Кто-то будет"
end

if n == 0
puts "Никто не придёт"
end
if n == 1
puts "Придёт один"
end
if n == 2
puts "Придут двое"
end
if n >= 3
puts "Будет больше двух гостей"
end