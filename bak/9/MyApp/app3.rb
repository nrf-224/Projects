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

base.each do |n, number|                   #��������� ����� each ��� ���� base � ����������� n � number
puts "#{n}, #{number}"                     #������� �������� n � number ��� ������� �� ��������� ���-�������
end

