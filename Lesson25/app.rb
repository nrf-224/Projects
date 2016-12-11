require 'sqlite3'
db = SQLite3::Database.new 'test.sqlite'

db.execute "insert into cars (Name, Price) values ('Jaguar', 50000)"

db.close