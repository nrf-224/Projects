require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:barbershop.db"

class Client < ActiveRecord::Base
	validates :name, presence: true, length: { minimum: 3 } #метод validates проводит валидацию данных, передаваемых в базу данных. в данном случае проверка, что поле заполнено и его длина минимум 3 символа
	# в метод validates передаётся хеш. в данном случае presence => true, length => {minimum => 3}
	validates :phone, presence: true
	validates :datestamp, presence: true
	validates :color, presence: true	
end

class Barber < ActiveRecord::Base
end

before do
	@barbers = Barber.all
end

get '/' do
	erb :index			
end

get '/visit' do
	@c = Client.new #создан экземпляр сущности client для того, чтобы на странице visit сохранялись введённые, но ещё не отправленные поля формы
	erb :visit
end

post '/visit' do

	@c = Client.new params[:client] #создаём экземпляр класса Client и передаём ему значение параметров client
	if @c.save #метод save проводит валидацию при сохранении, и возвращает значения true или false. в данном случае подразумевается if @c.save == true
		erb "<h2>Спасибо, вы записались!</h2>"
	else
		@error = @c.errors.full_messages.first
		erb :visit
	end
end

get '/barber/:id' do
	@barber = Barber.find(params[:id])
	erb :barber
end

get '/bookings' do
	@clients = Client.order('created_at DESC')
	erb :bookings
end

get '/client/:id' do
	@client = Client.find(params[:id])
	erb :client
end

