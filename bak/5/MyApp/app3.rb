# encoding: cp866
print "Сколько раз будем играть? "
x = gets.to_i

1.upto(x) do |x|
	y = rand(1..50)
	if y == 25
	puts "Сыграно #{x} раз, Вы выиграли!"
	else
	puts "Сыграно #{x} раз, играйте ещё"
	end
end
                                                 
