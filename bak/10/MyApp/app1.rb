#encoding: cp866
#�������� ���⮩ ���� ������ �� �᭮�� ��-⠡����
#� ���� ������ �࠭���� ��� � ����� ⥫�䮭�
hh = {}
loop do
puts "������ ���:"
name = gets.to_s.chomp.strip.capitalize
puts "������ ����� ⥫�䮭�"
phone = gets.to_s.chomp
hh[name] = phone
if name == "" then
puts hh.inspect
exit
end
end