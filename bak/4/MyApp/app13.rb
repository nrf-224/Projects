#encoding: cp866
puts "Formatting disk C"
1.upto(100) do |y|
	puts " #{y} percent complete "
	sleep rand (0.01..0.09)
	y = y + 1
end

puts
puts "Complete"
