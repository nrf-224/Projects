# encoding: cp866
print "Вы довольны своей зарплатой? (Y/N) "
answer = gets.chomp.strip.capitalize
	if answer == "Y"
	print "Очень хорошо\n"
	elsif answer == "N"
	print "Работайте над собой\n"

end
puts "Тут идут сложные вычисления"