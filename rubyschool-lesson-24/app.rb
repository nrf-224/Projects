require 'rubygems' #вызов гема rubygems
require 'sinatra' #вызов гема sinatra
require 'sinatra/reloader' #вызов гема sinatra reloader

get '/' do #начало метода, выполняемого при get-запросе к корневой странице сайта
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"
	#сообщение выше передаётся в метод erb на фронтэнде при помощи команды yield		
end #окончание метода

get '/about' do #начало метода, выполняемого при get-запросе к странице сайта about
	erb :about #вызов метода erb со ссылкой на страницу about.erb
end #окончание метода

get '/visit' do #начало метода, выполняемого при get-запросе к странице сайта visit
	erb :visit #вызов метода erb со ссылкой на страницу visit.erb
end #окончание метода

post '/visit' do #начало метода, выполняемого при post-запросе, отправляемом со страницы visit

	@username = params[:username] #определение переменной метода @username и присвоение ей значения,взятое из хеша params
	@phone = params[:phone] #определение переменной метода @phone и присвоение ей значения,взятое из хеша params
	@datetime = params[:datetime] #определение переменной метода @datetime и присвоение ей значения,взятое из хеша params
	@barber = params[:barber] #определение переменной метода @barber и присвоение ей значения,взятое из хеша params
	@color = params[:color] #определение переменной метода @color и присвоение ей значения,взятое из хеша params

	# хеш. Задача кода ниже - проверка того, что пользователь заполнил все обязательные поля. Если заполнены не все поля, то программа укажет, какие именно данные осталось указать
	hh = { 	:username => 'Введите имя',
			:phone => 'Введите телефон',
			:datetime => 'Введите дату и время' } #определяем хеш hh. В данном случае ключ - отсутствующий параметр при вводе, а сообщение - указание, какой параметр надо ввести.
			#В хеше указаны только необходимые параметры

	hh.each do |key, value| #определяем цикл each со внутренними переменными key, value, который выполнит с каждым элементом массива действия, описанные в коде ниже
		if params[key] == '' #если ключ пустой, то переменной error присваивается сообщение об ошибке, соответствующеее данному ключу
			@error = hh[key]

		return erb :visit
		end
	end
	
	erb "OK, username is #{@username}, #{@phone}, #{@datetime}, #{@barber}, #{@color}"
end
=begin
	@error = hh.select {|key,_| params[key] == ""}.values.join(", ") #определяем переменную error
	#в п

	if @error != '' #
		return erb :visit #
	end #

	erb "OK, username is #{@username}, #{@phone}, #{@datetime}, #{@barber}, #{@color}" #

end #
=end