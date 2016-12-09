say_hi = lambda {puts "Hi"}                                             #определяем лямбда-функцию say_hi
say_bye = lambda {puts "Bye"}                                           #определяем лямбда-функцию say_bye

week = [say_hi, say_hi, say_hi, say_hi, say_hi, say_bye, say_bye]       #определяем массив week, содержащий названия лямбда-функций

week.each do |f|                                                        #применяем метод each do к массиву week. так же определяем в методе переменную f
	f.call                                                          #переменной f поочерёдно присваиваются все значения массива week. при каждой итерации над значением выполняется метод call
end                                                                     #окончание метода each do



puts

#выполенение этой же задачи при помощи классов и методов - более привычно, но громоздко
class Greetings

	def say_hi
	puts "Hi"
	end

	def say_bye
	puts "Bye"
	end

end

g = Greetings.new


week = [g.say_hi, g.say_hi, g.say_hi, g.say_hi, g.say_hi, g.say_bye, g.say_bye]

week.each do
                                                                        #в методе each do нет внутренних переменных, так как над объектами массива week не нужно выполнять дополнительных операций
end
                                                                               
