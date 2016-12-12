require 'rubygems' #вызов гема rubygems
require 'sinatra' #вызов гема sinatra
require 'sinatra/reloader' #вызов гема sinatra reloader
require 'sqlite3'

def get_db
	db = SQLite3::Database.new 'barbershop.db'
	db.results_as_hash = true
	return db
end

configure do
	db = get_db
	db.execute 'CREATE TABLE IF NOT EXISTS
		"Users" 
		(
			"id" INTEGER PRIMARY KEY AUTOINCREMENT,
			"username" TEXT, 
			"phone" TEXT, 
			"datestamp" TEXT, 
			"barber" TEXT, 
			"color" TEXT
		)'
end


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

get '/contacts' do
	erb :contacts
end


post '/visit' do

	@username = params[:username]
	@phone = params[:phone]
	@datetime = params[:datetime]
	@barber = params[:barber]
	@color = params[:color]

hh = {     :username => 'Введите имя',
		   :phone => 'Введите телефон',
           :datetime => 'Введите дату и время' }

 @error = hh.select {|key,_| params[key] == ""}.values.join(", ")

	if @error != ''
      return erb :visit
	end

db = get_db
db.execute 'insert into 
				Users 
				(
				username, 
				phone, 
				datestamp, 
				barber, 
				color
				)

				values ( ?, ?, ?, ?, ?)', [@username, @phone, @datetime, @barber, @color]

erb "OK, username is #{@username}, #{@phone}, #{@datetime}, #{@barber}, #{@color}"
end




=begin

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


	# хеш. Задача кода ниже - проверка того, что пользователь заполнил все обязательные поля. Если заполнены не все поля, то программа укажет, какие именно данные осталось указать
	hh = { 	:username => 'Введите имя',
			:phone => 'Введите телефон',
			:datetime => 'Введите дату и время' } #определяем хеш hh. В данном случае ключ - отсутствующий параметр при вводе, а сообщение - указание, какой параметр надо ввести.
			#В хеше указаны только необходимые параметры

	@error = hh.select {|key,_| params[key] == ""}.values.join(", ") #определяем переменную error
	#в переменную error передаётся еретический код, который мне не до конца понятен

	if @error != '' #если сообщение об ошибке не пустое
		return erb :visit #вместо return можно было бы использовать метод redirect, но при этом не сохранялись бы введёные в поля формы значения
	elsif @error == ''
	erb "ОК, Ваше имя #{@username}, номер телефона #{@phone}, дата и время #{@datetime}, парикмахер: #{@barber}, цвет #{@color}" #
	end #
end #

post '/contacts' do
        name = params[:mailname]
        mail = params[:mailad]
        body = params[:message]

        Pony.mail(:to => 'nuklearbomb@yandex.ru', :from => "#{mail}", :subject => "Message from #{name}", :body => "#{body}")
end
=end