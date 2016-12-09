#encoding: cp866
print "Играем в игру Однорукий бандит. Ваш стартовый баланс - 100 долларов\n"
#определяем хеш-таблицу со всеми возможными призовыми комбинациями
combinations = {                                                                          
	111 => 10,
	222 => 20,
	333 => 30,
	444 => 40,
	555 => 50,
	777 => 70,
	888 => 80,
	999 => 90, }

money = 100

loop do
print "Нажмите Enter, чтобы cыграть\n"
gets
a = rand(100..999)                                         #определяем рандомное число и вносим его в переменную а

if combinations[a] then                                    #если ключ массива равен числу из переменной а, то выполняется условие ниже
money = money + combinations[a]

elsif a == 666 then
money = money/2 
                                                   
elsif a == 000 then
money = 0

else
money = money - 1
end

puts "Текущая комбинация #{a}"
puts "Ваш баланс #{money}"


if money <0 then
puts "У Вас закончились средства! Игра окончена!"
exit
end

end

