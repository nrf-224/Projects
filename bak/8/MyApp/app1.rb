# encoding: cp866

def get_command                              #��।��塞 ��楤��� get_command
actions = [:left, :right, :up, :down]        #��।��塞 ���ᨢ actions
x = rand(0..3)                               #����� ��६����� x � ��ᢠ����� �� ��砩��� ���祭�� � ��������� �� 0 �� 3
actions [x]                                  #�롨ࠥ� ����� �� ���ᨢ� actions, ᮮ⢥�����騩 ������ �. �㬥��� � ���ᨢ� ���� �� ���. ����� �뫮 ������� return actions [x]

end                 

command = get_command  

puts "����祭� ������� #{command}"   

if command == :left                  #�᫨ � ��६����� command ��।��� ���祭�� left, ����� ᮮ�饭�� "����� ���� �����" ⠪ ��� ���祭�� left �뫮 ����஢��� (�����稥), � �� �� �� ᠬ�
puts "����� ���� �����"              #��ꥪ� � �����, �� � � �।��饬 横�� if

elsif command == :right
puts "����� ���� ��ࠢ�"

elsif command == :up
puts "����� ���� �����"

elsif command == :down
puts "����� ���� ����"
end



def get_x                            #��।������ ��楤�� "get_x"
2 + 2                                #� 室� �믮������ ��楤��� �㤥� �믮����� ������ 2 + 2
end                                  #����砭�� ��楤���

def get_y                            #��।������ ��楤�� "get_y"
get_x * 2                            #� 室� �믮������ ��楤��� �㤥� �믮����� ������ 㬭������ �� 2 १���⮢ �믮����� ��楤��� get_x. �� �⮬ ��� �⮩ ����樨 �� �㦥� �⤥��� �맮� get_x
end                                  #����砭�� ��楤���

command_2 = get_y                    #�맮� ��楤��� get_y � ��।�� १���⮢ �� �믮������ � ��६����� command_2

puts "������� #{command_2}"        #�뢮� �� �࠭ १���⮢ �믮������ ��楤��� get_y. ��� १���� ࠢ�� 8