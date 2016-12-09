puts "Enter your password:"
p = gets.strip.to_s

arr = []
input = File.open("passwords.txt", "r")

while (line = input.gets)                   
	arr << line
	end
                                        
input.close

arr.each do |line|
	if line == p
	puts "Your password is weak!"
	else
	puts "Your password is strong!"
	end
end
