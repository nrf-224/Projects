class Something
	attr_accessor :name

	def initialize
	send("name=", "Mike")
	end
end

s = Something.new
puts s.name