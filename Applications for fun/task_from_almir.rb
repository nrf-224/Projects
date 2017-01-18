arr = []
loop do

print "Enter your favourite color (or Stop for exit): "
	color = gets.strip.capitalize
		if color == "Stop"
			arr.each do |color|
			print "#{color} "
			end	
		exit

		else
		arr << color
		end
end