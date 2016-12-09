#encoding: cp866

class Airport                                  #определяем класс Airport
	attr_reader :name                      #делаем доступным для чтения символ name
	attr_accessor :planes                  #делаем доступным для чтения и изменения символ planes
	def initialize(name)                   #определяем метод initialize, в который передаётся значение переменной name
	@name = name                           #определяем доступную внутри класса переменную @name и присваиваем ей значение name, переданное при выполнении метода initialize
	@planes = []                           #определяем пустой массив planes
	                                       
	end                                    #окончание метода initialize

	def add_plane plane                    #определяем метод add_plane, в который передаётся значение переменной plane
	@planes << plane                       #добавляем значение переменной plane, переданное при выполнении метода initialize, в массив @planes

	end                                    #окончание метода add_plane

end                                            #окончание класса Airport

class Plane                                    #определяем класс Plane
	attr_reader :model	               #делаем доступным для чтения символ model

	def initialize(model)                  #определяем метод initialize, в который передаётся значение переменной model
	@model = model                         #определяем доступную внутри класса переменную @model и присваиваем ей значение model, переданное при выполнении метода initialize

	end                                    #окончание метода initialize

end                                            #окончание класса Plane
#создание аэропортов
airports = []                                  #определяем пустой массив airports, в котором будут храниться экземпляры класса Airport

airport1 = Airport.new 'SVO'                   #определяем экземпляр класса Airport с названием airport1. Передаём в переменную name значение SVO
airport2 = Airport.new 'DME'                   #определяем экземпляр класса Airport с названием airport2. Передаём в переменную name значение DME

#добавление аэропортов в массив
airports << airport1
airports << airport2

#создание самолётов для первого аэропорта
plane1 = Plane.new 'Boeing 777'                #определяем экземпляр класса Plane с названием plane1. Передаём в переменную model значение Boeing 777
plane2 = Plane.new 'Airbus A320'               #определяем экземпляр класса Plane с названием plane2. Передаём в переменную model значение Airbus A320
plane3 = Plane.new 'Sukhoi SuperJet'           #определяем экземпляр класса Plane с названием plane3. Передаём в переменную model значение Sukhoi SuperJet

#добавление самолётов в первый аэропорт

airport1.add_plane plane1                      #при помощи метода add_plane добавляем экземпляр plane1 класса Plane в массив экземпляра airport1 класса Airport
airport1.add_plane plane2                      #при помощи метода add_plane добавляем экземпляр plane2 класса Plane в массив экземпляра airport1 класса Airport
airport1.add_plane plane3                      #при помощи метода add_plane добавляем экземпляр plane3 класса Plane в массив экземпляра airport1 класса Airport

#создание самолётов для второго аэропорта
plane4 = Plane.new 'Boeing 747'                #определяем экземпляр класса Plane с названием plane4. Передаём в переменную model значение Boeing 747
plane5 = Plane.new 'Airbus A321'               #определяем экземпляр класса Plane с названием plane5. Передаём в переменную model значение Airbus A321
plane6 = Plane.new 'MC-21'                     #определяем экземпляр класса Plane с названием plane6. Передаём в переменную model значение MC-21

#добавление самолётов во второй аэропорт
airport2.add_plane plane4                      #при помощи метода add_plane добавляем экземпляр plane4 класса Plane в массив экземпляра airport2 класса Airport
airport2.add_plane plane5                      #при помощи метода add_plane добавляем экземпляр plane5 класса Plane в массив экземпляра airport2 класса Airport
airport2.add_plane plane6                      #при помощи метода add_plane добавляем экземпляр plane6 класса Plane в массив экземпляра airport2 класса Airport

airports.each do |airport|                     #выполняем метод each для массива airports и вводим переменную метода each под названием airport
puts "Airport #{airport.name}"                 #выводим на экран значение переменной name для каждого из экземпляров класса Airport

	airport.planes.each do |plane|         #выполняем метод each для массива planes, который есть в каждом экземпляре класса Airport. Так же вводим переменную метода each под названием plane
	puts "Plane: #{plane.model}"           #выводим на экран значение переменной model для каждого из экземпляров класса plane
	end                                    #окончание метода each для массива planes
puts
end                                            #окончание метода each для массива airports