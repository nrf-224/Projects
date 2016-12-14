def digital_root(n)
loop do
	n = n.to_s.split('').map(&:to_i)
	n = n.inject(0){ |result, elem| result + elem }

	if n < 10
	break
	end
end
puts n
end


puts "Enter digit to calculate digital root:"
n = gets.chomp
digital_root(n)







