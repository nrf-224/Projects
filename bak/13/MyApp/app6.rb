sub_10 = lambda {|x| return x-10}                #����������� ������-�������� ���������� x, ���������� 10 �� x

a = sub_10.call 1000                             #����� ������-������� � ���������� x ������ 1000
puts a


sub_10 = lambda do |x| 
	return x-10
end

a = sub_10.call 2000
puts a