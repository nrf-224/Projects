#encoding: cp866
dict = {'Dog' => ['������', '���'], 'Cat' => ['��誠', '���'], 'Girl' => ['����誠', '����窠']}           #��।������ ���-⠡���, ������ �� ���� - ���� ᫮�� � ��ॢ��� - ���᪮�� ᫮��


loop do
puts "������ ᫮�� �� ������᪮� �몥:"                                   
ew = gets.to_s.strip.capitalize                                             #���।������ ��६����� ew, � ���ன �࠭���� ᫮�� �� ������᪮� �몥
if ew == ""
break
end
arr = dict[ew]                                                              #��।������ ��६����� rw, � ���ன �࠭���� १���� ���᪠ ���祭�� �� ����� - ᫮�� �� ������᪮� �몥
puts "��ॢ�� ᫮��:"                                                       #�뢮� �� ��࠭ ���祭�� rw
puts arr

puts "������⢮ ��ॢ����: #{arr.size}"
puts "��� ��६�����: #{arr.class}"
puts


end 