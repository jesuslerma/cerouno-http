require 'sinatra'

file_path = '../client/index.html'

get "/" do
	file_name = "../client/index.html"
	file = File.open(file_name, "r")
	html = file.read
	file.close
	html
end

get "/style.css" do
	file_name = "../client/style.css"
	file = File.open(file_name, "r")
	css = file.read
	file.close
	
	content_type 'text/css'
	css
end

get "/style2.css" do
	file_name = "../client/style.css"
	# delete file
	css
end

post "/songs" do
	request.body.read
end