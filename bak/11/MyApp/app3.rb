#encoding: cp866
class Book                                               #определяем класс Book
	attr_reader :last_person			 #этот аттрибут говорит, что переменная last_person будет доступна для чтения
	attr_accessor :new_attribute                     #этот аттрибут говорит, что переменная new_attribute будет доступна как для чтения, так и для записи
	def initialize                                   #определяем метод initialize, в котором будет определён хеш @hh
	@hh = {}                                         #определяем новый глобальный хеш @hh. Эта переменная будет доступна только в пределах класса Book
	@last_person = ''
	@new_attribute = ''                              #определяем переменную new_attribute, которая будет доступна в пределах класса book
	end

def add_person options                                   #определяем метод add_person со внутренними переменными из хеша options
	@last_person = options[:name]
        
	if @hh[options[:name]]
	puts "Already exists" 
	end	

	@hh[options[:name]] = options[:age]              #команда, добавляющая в @hh значение переменной name в качестве ключа, значение переменной age в качестве значения
end                                                      #окончание метода add_person


def show_all                                             #определяем метод show_all, который выводит на экран значение всех записей в хеш-таблице @hh

	@hh.keys.each do |key|                           #команда, выполняющая по ключу действия над каждой парой в хеш-таблице hh и имеющая внутреннюю переменную key
	age = @hh[key]                                   #команда, присваивающая переменной age значение из хеш-таблицы, найденное по ключу
	puts "Name #{key}, age #{age}"                   #вывод на экран строки со значением ключа и возраста
	end
	                                                 
end


	def aa                                           #определяем метод aa, позволяющий использовать переменную @hh вне класса
	@hh
	end
                                                   
end                                                         

b = Book.new                                             #создаём объект (экземпляр класса) b из класса Book
b.add_person :name =>'Mike', :age => 11                  #вызываем метод add_person объекта b, так же присваиваем значения переменным :name и :age
b.add_person :name =>'James', :age => 41
b.add_person :name =>'John', :age => 65
b.show_all                                               #вызываем метод show_all объекта b
puts b.aa                                                #выводим на экран значение метода aa из объекта b
puts "Last person: #{b.last_person}"                     #выводим на экран значение переменной last_person из экземпляра b класса book
b.new_attribute = 'test'                                 #присваиваем переменной new_attribute значение test
puts "Значение new_attribute #{b.new_attribute}"         #выводим на экран значение переменной new_attribute, которое было присвоено строкой выше
							 #важно отметить, что все операции над переменной были произведены вне класса. это из-за того, что она была определена в классе как attr_accessor

=begin
c = Book.new
c.add_person :name =>'Sam', :age => 11
c.show_all
=end