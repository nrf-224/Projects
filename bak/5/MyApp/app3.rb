# encoding: cp866
print "����쪮 ࠧ �㤥� �����? "
x = gets.to_i

1.upto(x) do |x|
	y = rand(1..50)
	if y == 25
	puts "��࠭� #{x} ࠧ, �� �먣ࠫ�!"
	else
	puts "��࠭� #{x} ࠧ, ��ࠩ� ���"
	end
end
                                                 
