#encoding: cp866
dict = {'Dog' => ['������', '���'], 'Cat' => ['��誠', '���'], 'Girl' => ['����誠', '����窠'], 'Paint' => ['���⨭�']}           #��।������ ���-⠡���, ������ �� ���� - ���� ᫮�� � ��ॢ��� - ���᪮�� ᫮��
x = 0

dict.each_value do |value|
x = x + value.size
#puts x                     #�㤥� �뢥���� ���祭�� x ��᫥ ������ ���樨
end
puts x                      #�㤥� �뢥���� ���祭�� x ��᫥ ��ࠡ�⪥ ��� ���祭�� ���-⠡����


=begin
arr1 = []                                     #��⮤ � ���ᨢ���
dict.each_value do |value|
arr1 << value
puts arr1.size
end

=end

=begin
loop do
puts "������ ᫮�� �� ������᪮� �몥:"                                   
ew = gets.to_s.strip.capitalize                                             #���।������ ��६����� ew, � ���ன �࠭���� ᫮�� �� ������᪮� �몥
if ew == ""
break
end
arr = dict[ew]                                                              #��।������ ��६����� rw, � ���ன �࠭���� १���� ���᪠ ���祭�� �� ����� - ᫮�� �� ������᪮� �몥
puts "��ॢ�� ᫮��:"                                                       #�뢮� �� �࠭ ���祭�� rw
puts arr

puts "������⢮ ��ॢ����: #{arr.size}"
puts "��� ��६�����: #{arr.class}"
puts


end 

=end