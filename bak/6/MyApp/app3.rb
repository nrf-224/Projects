# encoding: cp866
number = rand(1..100)
try = 10
x = 1
print "� ������� �᫮, 㣠��� �����? ������ �� �� 10 ����⮪\n���� ��ࢠ� ����⪠:\n"

1.upto(999) do 
answer = gets.to_i

if number == answer then
puts "������ � #{x} ����⪨!"
exit

end

if number <= answer then
try = try - 1
x = x+1
puts "��᫮ ����� �����������. ����⪠ ����� #{x} �� 10:"

if try == 0 then
puts "����⪨ �����稫���! �� �� 㣠����!"
exit
end

#elsif number <= answer && try == 0 then
#puts "����⪨ �����稫���! �� �� 㣠����!"
#exit

end

if number >= answer then
try = try - 1
x = x + 1
puts "��᫮ ����� �����������. ����⪠ ����� #{x} �� 10:"

if try == 0 then
puts "����⪨ �����稫���! �� �� 㣠����!"
exit
end

#elsif number <= answer && try == 0 then
#puts "����⪨ �����稫���! �� �� 㣠����!"
#exit

end

end