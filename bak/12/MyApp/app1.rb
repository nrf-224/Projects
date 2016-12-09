#encoding: cp866

class Song
	attr_accessor :name
	attr_accessor :duration

	def initialize name, duration
		@name = name
		@duration = duration
		
	end

end

song1 = Song.new 'Show Must Go On', 6

puts song1.name
puts song1.duration

song1.duration = 10

puts song1.duration