#encoding: cp866

puts "������ ࠧ��� ���ᨢ�"                                                                                  
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

puts "���ᨢ ����⮢ � ���묨 �����ᠬ� #{arr1.inspect}"
puts "���ᨢ ����⮢ � �����묨 �����ᠬ� #{arr2.inspect}"        