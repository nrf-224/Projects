#encoding: cp866
class Animal
	def initialize name
	@name = name
	end
            
	def run
	puts "#{@name} is running"
	end


	def activity
	eat
	jump
	sleep
	end

	private                         #отметка о том, что метод является приватным. Это означает, что он доступен только внутри класса и может быть вызван только другим методом
	                                #все методы ниже отметки private будут приватными
	def eat
	puts "#{@name} is eating"
	end

	def sleep
	puts "#{@name} is sleeping"
	end

	public                          #все методы ниже отметки public будут публичными. их можно вызывать из экземпляра класса

	def jump
	puts "#{@name} is jumping"
	end

end

class Dog < Animal
	def initialize
		super 'Dog'
	end

	def bark
	puts "#{@name} is woof-woof!"
	end

	def activity
	eat
	bark
	sleep
	end

end



animal = Animal.new 'Cat'
animal.activity
#animal.eat
puts
dog = Dog.new

dog.jump
dog.bark
dog.activity


