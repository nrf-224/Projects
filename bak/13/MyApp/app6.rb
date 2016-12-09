sub_10 = lambda {|x| return x-10}                #определение лямбда-функциис параметром x, отнимающей 10 от x

a = sub_10.call 1000                             #вызов лямбда-функции с параметром x равным 1000
puts a


sub_10 = lambda do |x| 
	return x-10
end

a = sub_10.call 2000
puts a