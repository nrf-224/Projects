def run_5_times
	5.times do
		yield                                 #�������� � ����� ���� ����, ������� ��� �������� ��� ������������� ������ � �������� ���������
	end
end

run_5_times {puts 'Something'}                        #������������� ������ run_5_times. � �������� ������� - ���, ������� ����� ������ ��� ������ ������� yield
puts

def run_5_times
	x = 0
	while x < 5
		yield x                               #� ������ ������ � yield ��������� �������� x. ��� ���� �������� x � ���������� x, ��������� ���� ��� �� ���� � �� ��
		x = x + 1
	end
end

run_5_times {|i| puts "Something, index #{i}"}        #������������� ������ run_5_times. � �������� ������� - ���, ������� ����� ������ ��� ������ ������� yield, � ��� �� �������, ���������� � yield



def run_5_times
	x = 0
	while x < 5
		yield x, 55                           #� ������ ������ � yield ��������� �������� x. ��� ���� �������� x � ���������� x, ��������� ���� ��� �� ���� � �� ��
		x = x + 1
	end
end

run_5_times {|i, v| puts "Something, index #{i}, value #{v}"}