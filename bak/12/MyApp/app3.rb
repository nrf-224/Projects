#encoding: cp866

class Airport                                  #��।��塞 ����� Airport
	attr_reader :name                      #������ ����㯭� ��� �⥭�� ᨬ��� name
	attr_accessor :planes                  #������ ����㯭� ��� �⥭�� � ��������� ᨬ��� planes
	def initialize(name)                   #��।��塞 ��⮤ initialize, � ����� ��।����� ���祭�� ��६����� name
	@name = name                           #��।��塞 ����㯭�� ����� ����� ��६����� @name � ��ᢠ����� �� ���祭�� name, ��।����� �� �믮������ ��⮤� initialize
	@planes = []                           #��।��塞 ���⮩ ���ᨢ planes
	                                       
	end                                    #����砭�� ��⮤� initialize

	def add_plane plane                    #��।��塞 ��⮤ add_plane, � ����� ��।����� ���祭�� ��६����� plane
	@planes << plane                       #������塞 ���祭�� ��६����� plane, ��।����� �� �믮������ ��⮤� initialize, � ���ᨢ @planes

	end                                    #����砭�� ��⮤� add_plane

end                                            #����砭�� ����� Airport

class Plane                                    #��।��塞 ����� Plane
	attr_reader :model	               #������ ����㯭� ��� �⥭�� ᨬ��� model

	def initialize(model)                  #��।��塞 ��⮤ initialize, � ����� ��।����� ���祭�� ��६����� model
	@model = model                         #��।��塞 ����㯭�� ����� ����� ��६����� @model � ��ᢠ����� �� ���祭�� model, ��।����� �� �믮������ ��⮤� initialize

	end                                    #����砭�� ��⮤� initialize

end                                            #����砭�� ����� Plane
#ᮧ����� ��ய��⮢
airports = []                                  #��।��塞 ���⮩ ���ᨢ airports, � ���஬ ���� �࠭����� �������� ����� Airport

airport1 = Airport.new 'SVO'                   #��।��塞 ������� ����� Airport � ��������� airport1. ��।�� � ��६����� name ���祭�� SVO
airport2 = Airport.new 'DME'                   #��।��塞 ������� ����� Airport � ��������� airport2. ��।�� � ��६����� name ���祭�� DME

#���������� ��ய��⮢ � ���ᨢ
airports << airport1
airports << airport2

#ᮧ����� ᠬ���⮢ ��� ��ࢮ�� ��ய���
plane1 = Plane.new 'Boeing 777'                #��।��塞 ������� ����� Plane � ��������� plane1. ��।�� � ��६����� model ���祭�� Boeing 777
plane2 = Plane.new 'Airbus A320'               #��।��塞 ������� ����� Plane � ��������� plane2. ��।�� � ��६����� model ���祭�� Airbus A320
plane3 = Plane.new 'Sukhoi SuperJet'           #��।��塞 ������� ����� Plane � ��������� plane3. ��।�� � ��६����� model ���祭�� Sukhoi SuperJet

#���������� ᠬ���⮢ � ���� ��ய���

airport1.add_plane plane1                      #�� ����� ��⮤� add_plane ������塞 ������� plane1 ����� Plane � ���ᨢ ������� airport1 ����� Airport
airport1.add_plane plane2                      #�� ����� ��⮤� add_plane ������塞 ������� plane2 ����� Plane � ���ᨢ ������� airport1 ����� Airport
airport1.add_plane plane3                      #�� ����� ��⮤� add_plane ������塞 ������� plane3 ����� Plane � ���ᨢ ������� airport1 ����� Airport

#ᮧ����� ᠬ���⮢ ��� ��ண� ��ய���
plane4 = Plane.new 'Boeing 747'                #��।��塞 ������� ����� Plane � ��������� plane4. ��।�� � ��६����� model ���祭�� Boeing 747
plane5 = Plane.new 'Airbus A321'               #��।��塞 ������� ����� Plane � ��������� plane5. ��।�� � ��६����� model ���祭�� Airbus A321
plane6 = Plane.new 'MC-21'                     #��।��塞 ������� ����� Plane � ��������� plane6. ��।�� � ��६����� model ���祭�� MC-21

#���������� ᠬ���⮢ �� ��ன ��ய���
airport2.add_plane plane4                      #�� ����� ��⮤� add_plane ������塞 ������� plane4 ����� Plane � ���ᨢ ������� airport2 ����� Airport
airport2.add_plane plane5                      #�� ����� ��⮤� add_plane ������塞 ������� plane5 ����� Plane � ���ᨢ ������� airport2 ����� Airport
airport2.add_plane plane6                      #�� ����� ��⮤� add_plane ������塞 ������� plane6 ����� Plane � ���ᨢ ������� airport2 ����� Airport

airports.each do |airport|                     #�믮��塞 ��⮤ each ��� ���ᨢ� airports � ������ ��६����� ��⮤� each ��� ��������� airport
puts "Airport #{airport.name}"                 #�뢮��� �� �࠭ ���祭�� ��६����� name ��� ������� �� ������஢ ����� Airport

	airport.planes.each do |plane|         #�믮��塞 ��⮤ each ��� ���ᨢ� planes, ����� ���� � ������ ������� ����� Airport. ��� �� ������ ��६����� ��⮤� each ��� ��������� plane
	puts "Plane: #{plane.model}"           #�뢮��� �� �࠭ ���祭�� ��६����� model ��� ������� �� ������஢ ����� plane
	end                                    #����砭�� ��⮤� each ��� ���ᨢ� planes
puts
end                                            #����砭�� ��⮤� each ��� ���ᨢ� airports