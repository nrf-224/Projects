#encoding: cp866
dict = {'Dog' => '������', 'Cat' => '��誠', 'Girl' => '����誠'}           #��।������ ���-⠡���, ������ �� ���� - ���� ᫮�� � ��ॢ��� - ���᪮�� ᫮��


loop do
puts "������ ᫮�� �� ������᪮� �몥:"                                   
ew = gets.to_s.strip.capitalize                                             #���।������ ��६����� ew, � ���ன �࠭���� ᫮�� �� ������᪮� �몥

rw = dict[ew]                                                               #��।������ ��६����� rw, � ���ன �࠭���� १���� ���᪠ ���祭�� �� ����� - ᫮�� �� ������᪮� �몥
puts "��ॢ�� ᫮��: #{rw}"                                                 #�뢮� �� ��࠭ ���祭�� rw

end 