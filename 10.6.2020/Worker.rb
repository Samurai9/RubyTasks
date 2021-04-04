require 'pg'

class Worker

	@conn = PG.connect(dbname: 'sinatra_app', host: 'localhost', user: 'postgres', 
			password: 'postgres')
	
	def initialize
		@conn = PG.connect(dbname: 'sinatra_app', host: 'localhost', user: 'postgres', 
			password: 'postgres')
	end
	
	def self.all
 		@conn.exec("select * from todos")
	end

	def self.where(params)
		@conn.exec("select * from todos where Title='#{params["custom_method"]}'")
	end

	def save(title)
		@conn.exec("insert into todos(Title) values ('#{title}')")
	end

	def update(id,title)
		@conn.exec("update todos set Title='#{title}' where id='#{id}'")
	end

	def delete (id)
		@conn.exec("delete from todos where id='#{id}'")
	end
end
