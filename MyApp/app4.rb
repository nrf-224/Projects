require 'sinatra'

get '/' do
	erb :index4
end

def under_construction
	@title = 'Under constriction'
	@message  = 'This page is under construction'
        erb :message

end

get '/contacts' do
	under_construction
end

get '/faq' do
	under_construction
end

get '/something' do
	under_construction
end


post '/' do
	@login = params[:login]
	@password  = params[:password]

	if @login == 'admin' && @password == 'secret'
		return erb :welcome
		else	
		erb :wrongpass
	end
end     	


