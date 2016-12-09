require 'sinatra'

get '/' do
	erb :index2
end

post '/' do
	@login = params[:login]
	@password  = params[:password]
	erb :index2
end     	


