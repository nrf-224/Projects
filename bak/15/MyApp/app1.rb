#��������� ��������� ��������� ������ �� ����� � ��������� �� ������ ���� ��� ������, ����� ������� ����� 6 ��������
arr = []                                    #���������� ������ ������, � ������� ����� ��������� ���������� ������
input = File.open("passwords.txt", "r")     #���������� ���������� input. ������� � ��� ���������� �������� ������ File.open, ������� ��������� ���� passwords.txt � ������� ������� r

while (line = input.gets)                   #���� while, ������� �������� - ���� ����� input ������� � ���������� line ������
	line.strip!                         #�������� strip! ������� �� ������ �������� � ������ � ����� ������. ��� �� ������� �����������, ���� \n
	if line.length == 6  then           #�������, ���� ����� ������ line == 6,�� ���������� ��� ������� ����
	puts line                           #���������� �������� ���������� line
	arr << line                         #�������� �������� ���������� � ������ arr
	end                                 #������� �������
end                                         #������� ����
input.close                                 #������� ���� passwords.txt
puts                                        #������

#puts arr

=begin
arr.each do |line|                          #���������� ���� each do � ���������� ����� line. ���� ������������ ��� �������� ������� arr
output = File.new("6spwds.txt", "a")        #���������� ���������� output. ������� � ��� ���������� �������� ������ File.new, ������� ������ ���� 6spwds.txt � ������� ������ a
output.puts(line)                           #������� � ���������� line ������� �������� �������� ������� � �������� ��� � ���� 6spwds.txt
output.close                                #��������� ����
end                                         #��������� �����
=end


output = File.new("6spwds.txt", "a")        #���������� ���������� output. ������� � ��� ���������� �������� ������ File.new, ������� ������ ���� 6spwds.txt � ������� ������ a
arr.each do |line|                          #���������� ���� each do � ���������� ����� line. ���� ������������ ��� �������� ������� arr
output.puts(line)                           #������� � ���������� line ������� �������� �������� ������� � �������� ��� � ���� 6spwds.txt
end                                         #��������� �����
output.close                                #��������� ����
   
