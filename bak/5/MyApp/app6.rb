# encoding: cp866
print "����쪮 ��� ���? "
x = gets.to_i

print "���� �� �� �����? (Y/N) "
y = gets.to_s.strip.capitalize

if x >= 18 && y == "Y"
print "��ࠥ� � ���� �����㪨� ������. ��� ���⮢� ������ - 100 �����஢\n"
money = 100

99999.times do

#print "������ X �� 0 �� 9\n"
#x = gets.to_i

#print "������ Y �� 0 �� 9\n"
#y = gets.to_i

#print "������ Z �� 0 �� 9\n"
#z = gets.to_i

print "������ Enter, �⮡� c����\n"
gets
x = rand(0..9)
y = rand(0..9)
z = rand(0..9)

#000

if x == 0 && y == 0 && z == 0
puts "��� ������ �����! ��������� #{x}#{y}#{z}"
money = 0

#111

elsif x == 1 && y == 1 && z == 1
puts "�� �먣ࠫ� 10 �����஢! ��������� #{x}#{y}#{z}"
money = money + 10

#222

elsif x == 2 && y == 2 && z == 2
puts "�� �먣ࠫ� 20 �����஢! ��������� #{x}#{y}#{z}"
money = money + 20

#333

elsif x == 3 && y == 3 && z == 3
puts "�� �먣ࠫ� 30 �����஢! ��������� #{x}#{y}#{z}"
money = money + 30

#444

elsif x == 4 && y == 4 && z == 4
puts "�� �먣ࠫ� 40 �����஢! ��������� #{x}#{y}#{z}"
money = money + 40

#555

elsif x == 5 && y == 5 && z == 5
puts "�� �먣ࠫ� 50 �����஢! ��������� #{x}#{y}#{z}"
money = money + 50

#666

elsif x == 6 && y == 6 && z == 6
puts "��᫮ �����! �� ����﫨 �������� �����! ��������� #{x}#{y}#{z}"
money = money/2

#777

elsif x == 7 && y == 7 && z == 7
puts "�� �먣ࠫ� 70 �����஢! ��������� #{x}#{y}#{z}"
money = money + 70

#888

elsif x == 8 && y == 8 && z == 8
puts "�� �먣ࠫ� 80 �����஢! ��������� #{x}#{y}#{z}"
money = money + 80

#999

elsif x == 9 && y == 9 && z == 9
puts "�� �먣ࠫ� 80 �����஢! ��������� #{x}#{y}#{z}"
money = money + 80

else
puts "�� ��祣� �� �먣ࠫ�! ������ - ����� ������. ��������� #{x}#{y}#{z}"
money = money - 1
end

puts "����騩 ������ #{money} �����஢"
end
end

if x >= 18 && y != "Y"     #����� ������� ��� y == "N", ⠪ � y != "Y"
print "�� �� ��� � �㤠 ���"
exit
end

if x < 18 && y == "Y"
print "��ࠥ� ⮫쪮 � ᮢ��襭����⭨��"
exit
end

if x < 18 && y != "Y"    #����� ������� ��� y == "N", ⠪ � y != "Y"
print "�� �� ��� � �㤠 ���"
exit
end