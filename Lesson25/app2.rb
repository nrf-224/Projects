#encoding: cp866
require 'sqlite3'                                     #�맮� ���� sqlite3
db = SQLite3::Database.new 'test.sqlite'              #�孨�᪨: ��।������ ��६����� db � ��᢮���� �� ������� ����� Database ����� SQLite3 � ��ࠬ��஬ test.sqlite
	                                              #���楯�㠫쭮: ��।�� � ��६����� db ���� test.sqlite ��� ���쭥��� ����権

db.execute "select * from cars" do |car|              #�믮������ sql-����� � ���� test.sqlite � ��।������ 横�� do � ����७��� ��६����� car
puts car                                              #�뢮� �� �࠭� ���祭�� ��६����� car. � ��� ��६����� �㤥� ��।��� ��ப� �� ⠡���� test
puts                                                  #��ப�-ࠧ����⥫�
end                                                   #�����⨥ 横�� do

db.close                                              #�����⨥ ���� ������