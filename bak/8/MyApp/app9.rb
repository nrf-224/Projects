# codepage: cp866
arrmain = []                                     #��।��塞 ���ᨢ arrmain  
loop do                                          #����� ��砫� 横��
	arr1 = []                                #��।��塞 ���ᨢ arr1 � 横��
	print "Enter name to add: "
	name = gets.strip.capitalize
	print "Enter age: "
	age = gets.to_i
	if name == ""
	break	
	end

	arr1 << name                             #�����뢠�� ���祭�� ��६����� name � ���ᨢ arr1
	arr1 << age                              #�����뢠�� ���祭�� ��६����� age � ���ᨢ arr1
	arrmain << arr1                          #�����뢠�� ���祭�� ���ᨢ� arr1 � ���ᨢ arrmain
end

x = 0
arrmain.each do |item|                           #�ᯮ��㥬 ��⮤ each � ����� ����⮬ ���ᨢ� arrmain. ����� ��६����� item
	x = x + 1
	puts "#{x}. #{item[0]}, #{item[1]}"      #⠪ ��� ���ᨢ arrmain ��⮨� �� ���祭�� ���ᨢ� arr1, �� ����� ������� #{item[n]} �뢮����� n-� ����� ���ᨢ� arr1
end

#� ������ ��砥 ��⮤ each ������� ������ ���ᨢ�