# encoding: cp866

print "����� �㬬� �㤥� �⪫��뢠�� � �����? " 
x = gets.to_f

print "����쪮 ���? "
n = gets.to_i

s = 0
n.times do |n|

	1.upto(12) do |mm|
	s = s + x
	puts "��� #{n} ����� #{mm} �⫮���� #{s}"
	end

end