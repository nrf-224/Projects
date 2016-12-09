#encoding: cp866
class Animal
	def initialize name
	@name = name
	end
            
	def run
	puts "#{@name} is running"
	end

	def jump
	puts "#{@name} is jumping"
	end
end

class Cat < Animal
	def initialize
		super 'cat'
	end	

	def meow
	puts "#{@name} is meow"
	end

end

class Dog < Animal
	def initialize
		super 'dog'
	end	
	def bark
	puts "#{@name} is woof-woof!"
	end
end

cat1 = Cat.new
dog1 = Dog.new

cat1.run
cat1.jump
cat1.meow
puts
dog1.run
dog1.jump
dog1.bark