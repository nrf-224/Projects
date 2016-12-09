#encoding: cp866
class Animal
	def initialize name
	@name = name
	end
            
	def run
	puts "#{@name} is running"
	end


	def activity
	eat
	jump
	sleep
	end

	private                         #�⬥⪠ � ⮬, �� ��⮤ ���� �ਢ���. �� ����砥�, �� �� ����㯥� ⮫쪮 ����� ����� � ����� ���� �맢�� ⮫쪮 ��㣨� ��⮤��
	                                #�� ��⮤� ���� �⬥⪨ private ���� �ਢ��묨
	def eat
	puts "#{@name} is eating"
	end

	def sleep
	puts "#{@name} is sleeping"
	end

	public                          #�� ��⮤� ���� �⬥⪨ public ���� �㡫��묨. �� ����� ��뢠�� �� ������� �����

	def jump
	puts "#{@name} is jumping"
	end

end

class Dog < Animal
	def initialize
		super 'Dog'
	end

	def bark
	puts "#{@name} is woof-woof!"
	end

	def activity
	eat
	bark
	sleep
	end

end



animal = Animal.new 'Cat'
animal.activity
#animal.eat
puts
dog = Dog.new

dog.jump
dog.bark
dog.activity


