# encoding: cp866
print "����쪮 ࠧ �㤥� �����? "
x = gets.to_i

print "������ ��� ���� �᫮: "
f = gets.to_i

1.upto(x) do |x|
	y = rand(1..50)
	if y == f
	puts "��࠭� #{x} ࠧ, �� �먣ࠫ�!"
	exit
	else
	puts "��࠭� #{x} ࠧ, ���஡�� ���"
	end
end
                    