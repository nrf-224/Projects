# encoding: cp866
print "Сколько раз будем играть? "
x = gets.to_i

print "Введите Ваше любимое число: "
f = gets.to_i

1.upto(x) do |x|
	y = rand(1..50)
	if y == f
	puts "Сыграно #{x} раз, Вы выиграли!"
	exit
	else
	puts "Сыграно #{x} раз, попробуйте ещё"
	end
end
                    