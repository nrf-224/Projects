#encoding: cp866
class Airplane                                #������ ����� Airplane

	attr_reader :model                   #������ ��������� ��� ������ ���������� model
	attr_reader :altitude                #������ ��������� ��� ������ ���������� altitude
	attr_reader :speed                   #������ ��������� ��� ������ ���������� speed
	
	def initialize(model)                #������ ����� initialize � ���������� ���������� model
	@model = model                       #����������� �������� ���������� model ��������� model �� ������ initialize
	@altitude = 0                        #����������� �������� ���������� altitude
	@speed = 0                           #����������� �������� ���������� speed
	end                                  #��������� ������

	def fly_boeing                       #������ ����� fly_boeing � ����������� ����� ������
	@speed = 800                         #����������� ���������� speed �������� 800
	@altitude = 10000                    #����������� ���������� altitude �������� 10000
	end                                  #��������� ������

	def fly_airbus
	@speed = 850
	@altitude = 10500
	end

	def land
	@speed = 0
	@altitude = 0
	end

	def moving?                          #������ �����, ��������� �������� true ��� false (������� �� ? � ����� �������� ������)
	return @speed >0	             #���������� �������� �������� � ����, ���������� �������� true, ���� speed >0 � false, ���� speed <= 0
	end                                  #��������� ������

end

plane1 = Airplane.new('Boeing 777')
puts "Model #{plane1.model}, speed #{plane1.speed}, altitude #{plane1.altitude}, moving? #{plane1.moving?}"

plane1.fly_boeing
puts "Model #{plane1.model}, speed #{plane1.speed}, altitude #{plane1.altitude}, moving? #{plane1.moving?}"

plane1.land
puts "Model #{plane1.model}, speed #{plane1.speed}, altitude #{plane1.altitude}, moving? #{plane1.moving?}"


puts

plane2 = Airplane.new('Airbus A320')
puts "Model #{plane2.model}, speed #{plane2.speed}, altitude #{plane2.altitude}, moving? #{plane2.moving?}"

plane2.fly_airbus
puts "Model #{plane2.model}, speed #{plane2.speed}, altitude #{plane2.altitude}, moving? #{plane2.moving?}"

plane2.land
puts "Model #{plane2.model}, speed #{plane2.speed}, altitude #{plane2.altitude}, moving? #{plane2.moving?}"
