require 'sinatra'

get '/' do
	erb :index
end

post '/' do
	@username = params[:username]
	@telephone = params[:telephone]
	@date_time = params[:date_time]

	@title = 'Thank you!'
	@message = "Dear #{@username}! We'll be waiting you at #{@date_time}"

	f = File.open './public/users.txt', 'a'
	f.write "User: #{@username}, phone: #{@telephone}, date and time: #{@date_time}\n"
	f.close
	
	erb :message

end