#encoding: cp866
base ={}                                   #���������� ������ ���

loop do                                    #���������� ���� ��� ������������ �����
puts "Enter name:"
n = gets.to_s.strip.capitalize             #���������� ���������� n, � ������� �������� ���

	if n == ""                         #����� ������� ����������� �����
	break
	end

puts "Enter phone number:"
number = gets.to_i                         #���������� ���������� number, � ������� �������� ���������� �����

base[n] = number                           #��������� �������� ���������� n � number � ���
end

#base['Mike'] = 999                         #����������� ����� ���-������� Mike �������� 999
puts base['Mike']                          #������� ��������, ��������� � ������ Mike	

