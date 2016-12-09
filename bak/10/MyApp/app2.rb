#encoding: cp866
@hh = {}                                                 #��।��塞 ���� �������� �� @hh

def add_person options                                   #��।��塞 ��⮤ add_person � ����७���� ��६���묨 �� �� options
        
	puts "Already exists" if @hh[options[:name]]

	@hh[options[:name]] = options[:age]              #�������, ���������� � @hh ���祭�� ��६����� name � ����⢥ ����, ���祭�� ��६����� age � ����⢥ ���祭��
end                                                      #����砭�� ��⮤� add_person

def show_hash                                            #��।��塞 ��⮤ show_hash, ����� �뢮��� �� �࠭ ���祭�� ��� ����ᥩ � ��-⠡��� @hh

	@hh.keys.each do |key|                           #�������, �믮������ ����⢨� ��� ������ ��ன � ��-⠡��� hh � ������ ����७��� ��६����� key
	age = @hh[key]                                   #�������, ��ᢠ������ ��६����� age ���祭�� �� ��-⠡����, ��������� �� �����
	puts "Name #{key}, age #{age}"                   #�뢮� �� �࠭ ��ப� � ���祭��� ���� � ������
	end
	                                                 
end                                                      #����砭�� ��⮤� show_hash
                                                         

loop do                                                  #��।��塞 ��᪮���� 横�, � ���஬ ���� ��������� ���� ���祭�� ��-⠡����
print "Enter name:\n"
name = gets.strip.chomp.to_s                             

	if name == ""
	show_hash
	exit
	end

	print "Enter age:\n"
	age = gets.to_i
	options = {:name => name, :age => age}           #��।��塞 ���-⠡���� options � ��६���묨 name � age

	add_person options                               #��।�� ���祭�� ��६����� �� �� options � ��⮤ add_person

end