#encoding: cp866
print "��ࠥ� � ���� �����㪨� ������. ��� ���⮢� ������ - 100 �����஢\n"
#��।��塞 ��-⠡���� � �ᥬ� �������묨 �ਧ��묨 ��������ﬨ
combinations = {                                                                          
	111 => 10,
	222 => 20,
	333 => 30,
	444 => 40,
	555 => 50,
	777 => 70,
	888 => 80,
	999 => 90, }

money = 100

loop do
print "������ Enter, �⮡� c����\n"
gets
a = rand(100..999)                                         #��।��塞 ࠭������ �᫮ � ���ᨬ ��� � ��६����� �

if combinations[a] then                                    #�᫨ ���� ���ᨢ� ࠢ�� ��� �� ��६����� �, � �믮������ �᫮��� ����
money = money + combinations[a]

elsif a == 666 then
money = money/2 
                                                   
elsif a == 000 then
money = 0

else
money = money - 1
end

puts "������ ��������� #{a}"
puts "��� ������ #{money}"


if money <0 then
puts "� ��� �����稫��� �।�⢠! ��� ����祭�!"
exit
end

end

