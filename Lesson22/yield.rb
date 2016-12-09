def get_website_contents
	puts "<body>"
	yield                                     #команда yield вызывает тот участок кода, который идёт после вызова метода
	puts "</body>"

end

get_website_contents {puts "Something"}

get_website_contents do

puts "Anything"

end