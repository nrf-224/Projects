say_hi = lambda {puts "Hi"}                                             #���������� ������-������� say_hi
say_bye = lambda {puts "Bye"}                                           #���������� ������-������� say_bye

week = [say_hi, say_hi, say_hi, say_hi, say_hi, say_bye, say_bye]       #���������� ������ week, ���������� �������� ������-�������

week.each do |f|                                                        #��������� ����� each do � ������� week. ��� �� ���������� � ������ ���������� f
	f.call                                                          #���������� f ��������� ������������� ��� �������� ������� week. ��� ������ �������� ��� ��������� ����������� ����� call
end                                                                     #��������� ������ each do



puts

#����������� ���� �� ������ ��� ������ ������� � ������� - ����� ��������, �� ���������
class Greetings

	def say_hi
	puts "Hi"
	end

	def say_bye
	puts "Bye"
	end

end

g = Greetings.new


week = [g.say_hi, g.say_hi, g.say_hi, g.say_hi, g.say_hi, g.say_bye, g.say_bye]

week.each do
                                                                        #� ������ each do ��� ���������� ����������, ��� ��� ��� ��������� ������� week �� ����� ��������� �������������� ��������
end
                                                                               
