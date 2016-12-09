#encoding: cp866
class Airplane                                #ёючфр╕ь ъырёё Airplane

	attr_reader :model                   #фхырхь фюёЄєяэющ фы  ўЄхэш  яхЁхьхээє■ model
	attr_reader :altitude                #фхырхь фюёЄєяэющ фы  ўЄхэш  яхЁхьхээє■ altitude
	attr_reader :speed                   #фхырхь фюёЄєяэющ фы  ўЄхэш  яхЁхьхээє■ speed
	
	def initialize(model)                #ёючфр╕ь ьхЄюф initialize ё шчьхэ хь√ь ярЁрьхЄЁюь model
	@model = model                       #яЁшётрштрхь чэрўхэшх яхЁхьхээющ model ярЁрьхЄЁє model шч ьхЄюфр initialize
	@altitude = 0                        #яЁшётрштрхь чэрўхэшх яхЁхьхээющ altitude
	@speed = 0                           #яЁшётрштрхь чэрўхэшх яхЁхьхээющ speed
	end                                  #юъюэўрэшх ьхЄюфр

	def fly_boeing                       #ёючфр╕ь ьхЄюф fly_boeing ё ярЁрьхЄЁрьш яюы╕Єр ┴юшэур
	@speed = 800                         #яЁшётрштрхь яхЁхьхээющ speed чэрўхэшх 800
	@altitude = 10000                    #яЁшётрштрхь яхЁхьхээющ altitude чэрўхэшх 10000
	end                                  #юъюэўрэшх ьхЄюфр

	def fly_airbus
	@speed = 850
	@altitude = 10500
	end

	def land
	@speed = 0
	@altitude = 0
	end

	def moving?                          #ёючфр╕ь ьхЄюф, т√тюф ∙шщ чэрўхэшх true шыш false (яюэ Єэю яю ? т ъюэЎх эрчтрэш  ьхЄюфр)
	return @speed >0	             #ёЁртэштрхь чэрўхэшх ёъюЁюёЄш ё эєы╕ь, тючтЁр∙рхь чэрўхэшх true, хёыш speed >0 ш false, хёыш speed <= 0
	end                                  #юъюэўрэшх ьхЄюфр

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
