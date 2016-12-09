#Программа, которая сохраняет в файл исходный код веб-страницы. При этом используется библиотека uri

require 'net/http'                                                                                  #вызов библиотеки net/http
require 'uri'                                                                                       #вызов библиотеки uri
                                                                                                    #	
puts "Press enter to begin downloading page"                                                        #Вывод сообщения на экран
gets                                                                                                #Ввод с клавиатуры
                                                                                                    #
arr = []                                                                                            #определяется пустой массив
                                                                                                    #
                                                                                                    #
uri = URI.parse 'http://rubyschool.us/router'                                                       #передаём гиперссылку в метод parse модуля uri. присваиваем это всё переменной uri
                                                                                                    #
response = Net::HTTP.post_form(uri, "login" => "admin", "password" => "bbb").body                   #передаём в метод post_form данные, которые должны быть указаны в полях login и passowrd
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
   




