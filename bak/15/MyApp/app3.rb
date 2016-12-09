#то же самое, что и app2, только реализовано через метод
def is_password_weak password
	input = File.open("passwords.txt", "r")

	while (line = input.gets)
		line.strip!

		if password.include? line
		return true
		end

	end
	return false

end

puts "Enter password:"
password = gets.strip

if is_password_weak password
	puts "Your password is weak"
else
	puts "Your password isn't weak"
end