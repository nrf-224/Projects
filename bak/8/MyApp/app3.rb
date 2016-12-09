#encoding: cp866

arr1 = ["walt", "hank", "jr", "jessie", "lida", 21]    #определение массива значений. число 21 определено как объект типа integer
print arr1
puts
x = 1
arr1.each do |name|                                    #задаём цикл, выводящий значения массива arr1. так же определяется переменная name внутри цикла
	puts "#{x} #{name}"
	x = x + 1
end
puts
arr2 = %w[fedor victor stepan gennadiy alexey 21]      #ещё один способ определения массива. число 21 определено как объект типа string
print arr2