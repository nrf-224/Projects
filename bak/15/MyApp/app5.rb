#���������, ������� ��������� � ���� �������� ��� ���-��������. ��� ���� ������������ ���������� uri

require 'net/http'                                                                                  #����� ���������� net/http
require 'uri'                                                                                       #����� ���������� uri
                                                                                                    #	
puts "Press enter to begin downloading page"                                                        #����� ��������� �� �����
gets                                                                                                #���� � ����������
                                                                                                    #
arr = []                                                                                            #������������ ������ ������
                                                                                                    #
                                                                                                    #
uri = URI.parse 'http://rubyschool.us/router'                                                       #������� ����������� � ����� parse ������ uri. ����������� ��� �� ���������� uri
                                                                                                    #
response = Net::HTTP.post_form(uri, "login" => "admin", "password" => "bbb").body                   #������� � ����� post_form ������, ������� ������ ���� ������� � ����� login � passowrd
	                                                                                            #
puts response                                                                                       #
                                                                                                    #
arr << response                                                                                     #
                                                                                                    #
arr.each do |line|                                                                                  #
output = File.new("response.txt", "a")                                                              #
output.puts(line)                                                                                   #
output.close                                                                                        #
end                                                                                                 #
   




