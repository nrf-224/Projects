#encoding: cp866
class Book                                               #��।��塞 ����� Book
	attr_reader :last_person			 #��� ���ਡ�� ������, �� ��६����� last_person �㤥� ����㯭� ��� �⥭��
	attr_accessor :new_attribute                     #��� ���ਡ�� ������, �� ��६����� new_attribute �㤥� ����㯭� ��� ��� �⥭��, ⠪ � ��� �����
	def initialize                                   #��।��塞 ��⮤ initialize, � ���஬ �㤥� ��।��� �� @hh
	@hh = {}                                         #��।��塞 ���� �������� �� @hh. �� ��६����� �㤥� ����㯭� ⮫쪮 � �।���� ����� Book
	@last_person = ''
	@new_attribute = ''                              #��।��塞 ��६����� new_attribute, ����� �㤥� ����㯭� � �।���� ����� book
	end

def add_person options                                   #��।��塞 ��⮤ add_person � ����७���� ��६���묨 �� �� options
	@last_person = options[:name]
        
	if @hh[options[:name]]
	puts "Already exists" 
	end	

	@hh[options[:name]] = options[:age]              #�������, ���������� � @hh ���祭�� ��६����� name � ����⢥ ����, ���祭�� ��६����� age � ����⢥ ���祭��
end                                                      #����砭�� ��⮤� add_person


def show_all                                             #��।��塞 ��⮤ show_all, ����� �뢮��� �� �࠭ ���祭�� ��� ����ᥩ � ��-⠡��� @hh

	@hh.keys.each do |key|                           #�������, �믮������ �� ����� ����⢨� ��� ������ ��ன � ��-⠡��� hh � ������ ����७��� ��६����� key
	age = @hh[key]                                   #�������, ��ᢠ������ ��६����� age ���祭�� �� ��-⠡����, ��������� �� �����
	puts "Name #{key}, age #{age}"                   #�뢮� �� �࠭ ��ப� � ���祭��� ���� � ������
	end
	                                                 
end


	def aa                                           #��।��塞 ��⮤ aa, ��������騩 �ᯮ�짮���� ��६����� @hh ��� �����
	@hh
	end
                                                   
end                                                         

b = Book.new                                             #ᮧ��� ��ꥪ� (������� �����) b �� ����� Book
b.add_person :name =>'Mike', :age => 11                  #��뢠�� ��⮤ add_person ��ꥪ� b, ⠪ �� ��ᢠ����� ���祭�� ��६���� :name � :age
b.add_person :name =>'James', :age => 41
b.add_person :name =>'John', :age => 65
b.show_all                                               #��뢠�� ��⮤ show_all ��ꥪ� b
puts b.aa                                                #�뢮��� �� �࠭ ���祭�� ��⮤� aa �� ��ꥪ� b
puts "Last person: #{b.last_person}"                     #�뢮��� �� �࠭ ���祭�� ��६����� last_person �� ������� b ����� book
b.new_attribute = 'test'                                 #��ᢠ����� ��६����� new_attribute ���祭�� test
puts "���祭�� new_attribute #{b.new_attribute}"         #�뢮��� �� �࠭ ���祭�� ��६����� new_attribute, ���஥ �뫮 ��᢮��� ��ப�� ���
							 #����� �⬥���, �� �� ����樨 ��� ��६����� �뫨 �ந������� ��� �����. �� ��-�� ⮣�, �� ��� �뫠 ��।����� � ����� ��� attr_accessor

=begin
c = Book.new
c.add_person :name =>'Sam', :age => 11
c.show_all
=end