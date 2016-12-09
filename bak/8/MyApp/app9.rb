# codepage: cp866
arrmain = []                                     #определяем массив arrmain  
loop do                                          #задаём начало цикла
	arr1 = []                                #определяем массив arr1 в цикле
	print "Enter name to add: "
	name = gets.strip.capitalize
	print "Enter age: "
	age = gets.to_i
	if name == ""
	break	
	end

	arr1 << name                             #записываем значение переменной name в массив arr1
	arr1 << age                              #записываем значение переменной age в массив arr1
	arrmain << arr1                          #записываем значение массива arr1 в массив arrmain
end

x = 0
arrmain.each do |item|                           #используем метод each с каждым элементом массива arrmain. Задаём переменную item
	x = x + 1
	puts "#{x}. #{item[0]}, #{item[1]}"      #так как массив arrmain состоит из значений массива arr1, при помощи команды #{item[n]} выводится n-й элемент массива arr1
end

#в данном случае метод each перечисляет элементы массива