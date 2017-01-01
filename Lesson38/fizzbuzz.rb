arr = (1..100).to_a
#puts arr.inspect

arr.each do |v|
	if (v%3 == 0 && v%5 == 0)
	puts "#{v} FizzBuzz"
	elsif v%3 == 0
	puts "#{v} Fizz"
	elsif v%5 == 0
	puts "#{v} Buzz"
	else
	puts "#{v}"
	end
end

