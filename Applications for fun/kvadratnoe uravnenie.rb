#encoding: cp866
puts "�����⭮� �ࠢ����� ����� ��� ax^2 + bx + c = 0"
puts "������ �����樥�� a:"
a = gets.to_f
puts "������ �����樥�� b:"
b = gets.to_f
puts "������ �����樥�� c:"
c = gets.to_f

d = b**2 - 4*a*c
if d > 0 then
puts "���ਬ�����: #{d}"
elsif d <0 then
puts "���ਬ����� ����� ���, �ࠢ����� �� ����� ����⢨⥫��� ��୥�"
exit
elsif d == 0 then
puts "���ਬ����� ࠢ�� ���, �ࠢ����� ����� ���� ��७�"
end
d2 = Math.sqrt(d)

x1 = (-b + d2)/(2*a)
x2 = (-b - d2)/(2*a)

if x1 == x2 then
puts "x = #{x1}"
else
puts "�1 = #{x1}, x2 = #{x2}"
end