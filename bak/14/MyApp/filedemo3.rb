
#�����������, ����������� ��������� ��������� ����

input = File.open "test.txt", "r"           #����� input, ����������� ���� test.txt � ������� ������� r - ������ ��� ������     

while (line = input.gets)                   #���� while, ������� �������� - ���� ����� input ������� � ���������� line ������
	puts line                           #���������� �������� ���������� line

end                                         #������� ����
input.close                                 #������� ����� input
