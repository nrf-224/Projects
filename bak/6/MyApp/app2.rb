# encoding: cp866
number = rand(1..100)
print "� ������� �᫮, 㣠��� �����? "

1.upto(999) do |x|
answer = gets.to_i
if number == answer then
puts "������ � #{x} ����⪨!"
exit
elsif number <= answer then
puts "��᫮ ����� �����������. ����⪠ ����� #{x}"
elsif number >= answer then
puts "��᫮ ����� �����������. ����⪠ ����� #{x}"
end

end