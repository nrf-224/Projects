#encoding: cp866
# моё решение, без цикла
arr1 = %w[Виктор Михаил Сергей Алексей Дмитрий Василий]
x = 0
puts "Список учеников"
arr1.each do |name|                                    #задаём цикл, выводящий значения массива arr1. так же определяется переменная name внутри цикла
	puts "#{x} #{name}"
	x = x + 1
end

puts "Укажите номер ученика, которого надо удалить из списка:"
y = gets.to_i
puts
arr1.delete_at y
arr2 = arr1
x = 0
arr2.each do |name|
	puts "#{x} #{name}"
	x = x+1
end
