def aaa
	puts "1st"
end

def bbb
	puts "2nd"
end

def method_missing a
	puts "Unknown method #{@a}"
end




print "Enter method name to call: "
a = gets.strip


send a                                #вызов метода по названию
