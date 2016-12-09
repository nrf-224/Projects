#encoding: cp866
class Country
        attr_reader :name
	attr_accessor :airports

	def initialize(name)
	@name = name
	@airports = []
	end

	def add_airport name
	@airports << name
	end

end


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
	attr_reader :number
	def initialize(model, number)
	@model = model
	@number = number
	end
end

countries = []

country1 = Country.new 'Netherlands'
country2 = Country.new 'Germany'

airport1 = Airport.new 'Schipchol'
airport2 = Airport.new 'Dusseldorf'
airport3 = Airport.new 'Berlin-Tegel'

plane1 = Plane.new 'Airbus A320', 'SC-1'
plane2 = Plane.new 'Boeing 737', 'SC-2'
plane3 = Plane.new 'Airbus A321', 'DU-1'
plane4 = Plane.new 'Airbus A319', 'DU-2'
plane5 = Plane.new 'Boeing 747', 'DU-3'
plane6 = Plane.new 'Boeing 737', 'BT-1'

country1.add_airport airport1
country2.add_airport airport2
country2.add_airport airport3

airport1.add_plane plane1
airport1.add_plane plane2

airport2.add_plane plane3
airport2.add_plane plane4
airport2.add_plane plane5

airport3.add_plane plane6

countries << country1
countries << country2

countries.each do |country|
puts "Country: #{country.name}"


country.airports.each do |airport|
puts "Airport #{airport.name}"

x = 1
airport.planes.each do |plane|
puts "Plane #{x}: #{plane.model}, #{plane.number}"
x = x + 1
end
puts

end
end
