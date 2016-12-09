class Something
	def method_missing name
		puts "Calling unknown method #{name}"
	end
end

s = Something.new
s.asdasd