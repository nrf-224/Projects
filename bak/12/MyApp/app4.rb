#encoding: cp866
class Airport
	attr_reader :name
	attr_accessor :planes
	def initialize(name)
	@name = name
	@planes = []
	end

	def add_plane plane
	@planes << plane
	end

end

class Plane
	attr_reader :model
	def initialize(model)
	@model = model
	end
end

airport1 = Airport.new 'Schipchol'

plane1 = Plane.new 'Airbus A320'
plane2 = Plane.new 'Boeing 737'

airport1.add_plane plane1
airport1.add_plane plane2

puts "Airport: #{airport1.name}"
x = 1
airport1.planes.each do |plane|
puts "Plane #{x}: #{plane.model}"
x = x + 1
end
