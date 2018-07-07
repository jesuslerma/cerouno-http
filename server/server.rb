require 'sinatra'
require 'find'

file_paths = []

Find.find('songs/') do |path|
	file_paths.push(path) if path != "songs/"
end

song_path = "../client/templates/li.html"

get "/" do
	file_name = "../client/index.html"
	file = File.open(file_name, "r")
	html = file.read
	file.close

	song_lis = file_paths.map do |file_path|
		li = File.open(song_path, "r")

		li_html = li.read
		puts li_html
		li_html = li_html % {:song_name => file_path}
		li.close
		li_html
	end
	puts song_lis
	html =  html % { :file_paths => song_lis.join('<br>') }
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
