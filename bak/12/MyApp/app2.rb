#encoding: cp866
class Airport
	attr_reader :name
	def initialize name, airplanes
	@name = name
	@airplanes = []

	def add_airplane airplane
	@airplanes << airplane
	end

end

class Airplane
	attr_reader :model
	def initialize model
	@model = model
	end

end