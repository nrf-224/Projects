module Humans
	class Man
		def say_hi                
		puts "Hi!"
		end
	end

	class Hipster
		def say_hi
		puts "Hi, mate!"
		end
	end

	class Friend
		def say_hi
		puts "Hi, friend"
		end
	end


end

module Animals
	class Cat
	end

	class Dog
	end
end


hipster = Humans::Hipster.new
hipster.say_hi

dog = Animals::Dog.new