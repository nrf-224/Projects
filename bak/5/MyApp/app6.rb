# encoding: cp866
print "Сколько Вам лет? "
x = gets.to_i

print "Хотите ли Вы играть? (Y/N) "
y = gets.to_s.strip.capitalize

if x >= 18 && y == "Y"
print "Играем в игру Однорукий бандит. Ваш стартовый баланс - 100 долларов\n"
money = 100

99999.times do

#print "Введите X от 0 до 9\n"
#x = gets.to_i

#print "Введите Y от 0 до 9\n"
#y = gets.to_i

#print "Введите Z от 0 до 9\n"
#z = gets.to_i

print "Нажмите Enter, чтобы cыграть\n"
gets
x = rand(0..9)
y = rand(0..9)
z = rand(0..9)

#000

if x == 0 && y == 0 && z == 0
puts "Ваш баланс обнулён! Комбинация #{x}#{y}#{z}"
money = 0

#111

elsif x == 1 && y == 1 && z == 1
puts "Вы выиграли 10 долларов! Комбинация #{x}#{y}#{z}"
money = money + 10

#222

elsif x == 2 && y == 2 && z == 2
puts "Вы выиграли 20 долларов! Комбинация #{x}#{y}#{z}"
money = money + 20

#333

elsif x == 3 && y == 3 && z == 3
puts "Вы выиграли 30 долларов! Комбинация #{x}#{y}#{z}"
money = money + 30

#444

elsif x == 4 && y == 4 && z == 4
puts "Вы выиграли 40 долларов! Комбинация #{x}#{y}#{z}"
money = money + 40

#555

elsif x == 5 && y == 5 && z == 5
puts "Вы выиграли 50 долларов! Комбинация #{x}#{y}#{z}"
money = money + 50

#666

elsif x == 6 && y == 6 && z == 6
puts "Число зверя! Вы потеряли половину денег! Комбинация #{x}#{y}#{z}"
money = money/2

#777

elsif x == 7 && y == 7 && z == 7
puts "Вы выиграли 70 долларов! Комбинация #{x}#{y}#{z}"
money = money + 70

#888

elsif x == 8 && y == 8 && z == 8
puts "Вы выиграли 80 долларов! Комбинация #{x}#{y}#{z}"
money = money + 80

#999

elsif x == 9 && y == 9 && z == 9
puts "Вы выиграли 80 долларов! Комбинация #{x}#{y}#{z}"
money = money + 80

else
puts "Вы ничего не выиграли! Баланс - минус доллар. Комбинация #{x}#{y}#{z}"
money = money - 1
end

puts "Текущий баланс #{money} долларов"
end
end

if x >= 18 && y != "Y"     #Можно написать как y == "N", так и y != "Y"
print "Ну на нет и суда нет"
exit
end

if x < 18 && y == "Y"
print "Играем только с совершеннолетними"
exit
end

if x < 18 && y != "Y"    #Можно написать как y == "N", так и y != "Y"
print "Ну на нет и суда нет"
exit
end