# encoding: cp866
number = rand(1..100)
try = 10
x = 1
print "Я загадал число, угадай какое? Сделай это за 10 попыток\nТвоя первая попытка:\n"

1.upto(999) do 
answer = gets.to_i

if number == answer then
puts "Угадал с #{x} попытки!"
exit

end

if number <= answer then
try = try - 1
x = x+1
puts "Число больше загаданного. Попытка номер #{x} из 10:"

if try == 0 then
puts "Попытки закончились! Вы не угалали!"
exit
end

#elsif number <= answer && try == 0 then
#puts "Попытки закончились! Вы не угалали!"
#exit

end

if number >= answer then
try = try - 1
x = x + 1
puts "Число меньше загаданного. Попытка номер #{x} из 10:"

if try == 0 then
puts "Попытки закончились! Вы не угалали!"
exit
end

#elsif number <= answer && try == 0 then
#puts "Попытки закончились! Вы не угалали!"
#exit

end

end