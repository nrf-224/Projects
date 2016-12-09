#encoding: cp866
@hh = {}                                                 #определяем новый глобальный хеш @hh

def add_person options                                   #определяем метод add_person со внутренними переменными из хеша options
        
	puts "Already exists" if @hh[options[:name]]

	@hh[options[:name]] = options[:age]              #команда, добавляющая в @hh значение переменной name в качестве ключа, значение переменной age в качестве значения
end                                                      #окончание метода add_person

def show_hash                                            #определяем метод show_hash, который выводит на экран значение всех записей в хеш-таблице @hh

	@hh.keys.each do |key|                           #команда, выполняющая действия над каждой парой в хеш-таблице hh и имеющая внутреннюю переменную key
	age = @hh[key]                                   #команда, присваивающая переменной age значение из хеш-таблицы, найденное по ключу
	puts "Name #{key}, age #{age}"                   #вывод на экран строки со значением ключа и возраста
	end
	                                                 
end                                                      #окончание метода show_hash
                                                         

loop do                                                  #определяем бесконечный цикл, в котором будут вводиться новые значения хеш-таблицы
print "Enter name:\n"
name = gets.strip.chomp.to_s                             

	if name == ""
	show_hash
	exit
	end

	print "Enter age:\n"
	age = gets.to_i
	options = {:name => name, :age => age}           #определяем хэш-таблицу options с переменными name и age

	add_person options                               #передаём значения переменных из хеша options в метод add_person

end