#encoding: cp866

puts "Укажите размер массива"                                                                                  
s = gets.to_i                                                                                                       

arr = []
arr1 = []
arr2 = []                                                                                                         
                                                                                                                                                                                                                           
s.times do |r|                                                                                               
r = rand(0..100)                                                                                           
arr << r                                                                                                                                                                            
end 

puts arr.inspect


arr.each_with_index do |e, i|                                                                                  
	if (i%2 == 0)
	arr1 << e
	else
	arr2 << e
	end                                                                                                                                                                                     
end

puts "Массив элементов с чётными индексами #{arr1.inspect}"
puts "Массив элементов с нечётными индексами #{arr2.inspect}"        