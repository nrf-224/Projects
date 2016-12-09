class Animal
	
	def run
	@name = "Dog"
	puts "#{@name} is running"
	end
	
	def stop
	puts "#{@name} is stop"
	end

end

a = Animal.new
a.run
a.stop