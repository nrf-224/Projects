# encoding: cp866

print "Какую сумму будем откладывать в месяц? " 
x = gets.to_f

print "Сколько лет? "
n = gets.to_i

s = 0
n.times do |n|

	1.upto(12) do |mm|
	s = s + x
	puts "Год #{n} месяц #{mm} отложено #{s}"
	end

end