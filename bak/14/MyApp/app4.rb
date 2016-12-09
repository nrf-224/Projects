class Something
	attr_accessor :name
	def initialize name
		@name = name
	end
end

s = Something.new 'Mike'
puts s.name
puts s.inspect

