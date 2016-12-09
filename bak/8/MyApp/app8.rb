arr = []

loop do
	print "Enter name to add: "
	name = gets.strip.capitalize
	if name == ""
	break	
	end

	arr << name
end

x = 0

arr.each do |name|
	x = x + 1
	puts "#{x}. #{name}"
end

