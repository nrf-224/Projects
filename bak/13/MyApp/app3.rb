def run_5_times
	5.times do
		yield                                 #вызывает в метод блок кода, который был добавлен при инициализации метода в качестве параметра
	end
end

run_5_times {puts 'Something'}                        #инициализация метода run_5_times. в фигурных скобках - код, который будет вызван при помощи команды yield
puts

def run_5_times
	x = 0
	while x < 5
		yield x                               #в данном случае в yield передаётся параметр x. при этом параметр x и переменная x, указанная выше это не одно и то же
		x = x + 1
	end
end

run_5_times {|i| puts "Something, index #{i}"}        #инициализация метода run_5_times. в фигурных скобках - код, который будет вызван при помощи команды yield, а так же парметр, переданный в yield



def run_5_times
	x = 0
	while x < 5
		yield x, 55                           #в данном случае в yield передаётся параметр x. при этом параметр x и переменная x, указанная выше это не одно и то же
		x = x + 1
	end
end

run_5_times {|i, v| puts "Something, index #{i}, value #{v}"}