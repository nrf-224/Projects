#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:barbershop.db" #создаётся подключение к базе данных barbershop.db
#символ :database является служебным

class Client < ActiveRecord::Base #создана сущность client, которая наследуется от сущности Base модуля ActiveRecord
end

get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end