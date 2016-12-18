#encoding: utf-8
require 'rubygems' #вызов гема rubygems
require 'sinatra' #вызов гема sinatra
require 'sinatra/reloader' #вызов егма sinatra reloader
require 'sqlite3' #вызов гема sqlite3

def init_db #определяем метод init_db, при помощи которого будет создаваться база данных при деплое приложения
	@db = SQLite3::Database.new 'leprosorium.db' #определяем глобальную переменную db и присваиваем ей базу leprosorium.db через модули и классы sqlite3
	@db.results_as_hash = true #определяем параметр, благодаря которому данные из таблицы будут возвращены в виде хеш-таблицы, а не массива
end #закрытие метода init_db

before do #вызываем метод init_db перед обращением к любому из url
	init_db
end

configure do #определяем код, который будет выполняться каждый раз при старте Sinatra
	init_db #вызов метода init_db
	#выполняем sql-запрос к базе данных leprosorium.db через переменную @db
	#запрос проверяет наличие в базе таблицы Posts, и если её нет, то создаёт. В таблице есть поля Id (первичный ключ), Date (дата поста), Text (содержание поста), Title (Заголовок)
	@db.execute 'CREATE  TABLE IF NOT EXISTS Posts
	(
		Id INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL  UNIQUE, 
		created_date DATE, 
		content TEXT,
		title TEXT
	)'
	#запрос проверяет наличие в базе таблицы Comments, и если её нет, то создаёт. В таблице есть поля Id (первичный ключ), Date (дата поста), Text (содержание поста), post_id (номер поста)
	@db.execute 'CREATE  TABLE IF NOT EXISTS Comments
	(
		Id INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL  UNIQUE, 
		created_date DATE, 
		content TEXT,
		post_id integer
	)'
end #закрытие configure

get '/' do #определяем метод get, выполняемый при обращении к главной странице сайта
#передаём в глобальную переменную results результат выполнения sql-запроса к базе данных
#запрос выбирает все строки из таблицы Posts и делает обратную сортировку по полю id
@results = @db.execute 'select * from Posts order by id desc'
comcount = @db.execute 'select count(*) from Comments'
comcount2 = comcount.to_s.split('')
@comcount3 = comcount2[14]

erb :index	#выводим на экран страницу index.erb
end

get '/new' do #определяем метод get, выполняемый при обращении к главной странице сайта 
erb :new	#выводим на экран страницу new.erb
end

post '/new' do #определяем метод post, выполняемый при отправке post-запроса к странице /new
	content  = params[:content] #определяем переменную content, в которую передаются данные из поля content на странице new.erb
	title = params[:title] #определяем переменную title, в которую передаются данные из поля title на странице new.erb
	if content.length <= 0 #выполняем проверку, в случае если в поле content ничего не введено, то выводится сообщение об ошибке
		@error = "Введите текст поста" #сообщение об ошибке
		return erb :new #возвращаем на экран страницу new.erb
	end #закрытие end

	#запрос вставляет в поля таблицы Posts значения content и title, переданные в виде массива 
	@db.execute 'insert into Posts (content, created_date, title) values (?, datetime(), ?)', [content, title]

	#после добавления данных в таблицу Posts происходит редирект на глагне
	redirect to '/'


end #закрытие метода post

#код ниже отвечает за добавление комментариев к посту. Фактически, в данном случае get и post запросы взаимосвязаны,
#так как при открытии страницы и написании комментария выполняется следующая последовательность действий:
#1. get-запрос, в который передаётся строка из таблицы Posts, соответствующая текущему посту, а так же строки из таблицы Comments, соответствующие текущему посту
#2. post-запрос, который добавляет в таблицу Comments строку с новым комментарием
#3. опять get-запрос, который отображает то же самое, что и на пункте 1, но при этом в таблице Comments добавилась ещё одна запись

get '/details/:post_id' do #определяем метод get, который выполняется при обращении к странице комментариев под постом
#фактически, этот get-запрос динамически генерирует веб-страницы при помощи контента из таблиц Posts и Comments

	@post_id = params[:post_id] #определяем глобальную переменную post_id, в которую передаём номер поста
	results = @db.execute 'select * from Posts where id = ?', [@post_id] #в переменную results передаётся результат выполнения sql-запроса к базе, который вытягивает все строки из таблицы Posts по номеру поста
	#данные возвращаются в виде массива
	@row = results[0] #переменной row присваивается первый элемент массива значений из переменной results
	#переменной comments присваивается результат выполнения запроса к базе, который вытягивает все комментарии из базы по номеру поста, сортируя их при этом по id коммента
	@comments = @db.execute 'select * from Comments where post_id = ? order by id' , [@post_id]

erb :details #выводим на экран обработанную страницу details.erb
end #закрытие метода get

post '/details/:post_id' do #определяем метод post, выполняемый при отправке post-запроса к странице /details/:post_id
	post_id = params[:post_id] #определяем переменную post_id, в которую передаём значение :post_id из хеша params
	content  = params[:content] #определяем переменную comtent, в которую передаём значение :content из хеша params

#выполняем запрос к базе leprosorium.db, в хоте которого в таблицу Comments добавляются значения переменных content и post_id
@db.execute 'insert into Comments (content, created_date, post_id) values (?, datetime(), ?)', [content, post_id]

redirect to ('/details/' + post_id) #после записи поста в базу, происходит редирект на страницу /details/post_id. После этого начинает выполняться get '/detalis/:post_id' do
end #закрытие метода post