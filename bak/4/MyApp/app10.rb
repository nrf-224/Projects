# encoding: cp866

print "����� �㬬� �㤥� �⪫��뢠�� � �����? "
x = gets.to_f

print "����쪮 ����楢? "
n = gets.to_i

s = 0

1.upto(n) do |mm|
	s = s + x
	puts "���������� �� #{mm} ����� #{s}"
end