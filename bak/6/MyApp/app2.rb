# encoding: cp866
number = rand(1..100)
print "Я загадал число, угадай какое? "

1.upto(999) do |x|
answer = gets.to_i
if number == answer then
puts "Угадал с #{x} попытки!"
exit
elsif number <= answer then
puts "Число больше загаданного. Попытка номер #{x}"
elsif number >= answer then
puts "Число меньше загаданного. Попытка номер #{x}"
end

end