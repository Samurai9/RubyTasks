require 'pg'
require 'sinatra'
require 'sinatra/reloader' if development?
load './Worker.rb'


connect = PG.connect(dbname: 'sinatra_app', host: 'localhost', user: 'postgres', 
	password: 'postgres')

get "/todos" do
	@results = Worker.all
  erb :index
end

post "/todos" do
	case params["custom_method"]
	when "POST"
		Worker.new.save(params["title"])
		redirect("/todos")
  
	when "DELETE"
		Worker.new.delete(params["id"])
		redirect("/todos")
	end
end

get "/todos/new" do
  erb :new
end

post "/todos/search" do
	@results = Worker.where(params)
	erb :index
end

get "/todos/:id/edit" do
	@result = connect.exec("select * from todos where id=#{params['id']}")[0]
	erb :edit
end

get "/todos/:id" do
  @result = connect.exec("select * from todos where id=#{params['id']}")[0]
  erb :show
end

post "/todos/:id" do
	case params['custom_method']
	when "PUT"
		@result	= Worker.new.update(params['id'], params['title'])
		redirect("/todos")
	end
end




